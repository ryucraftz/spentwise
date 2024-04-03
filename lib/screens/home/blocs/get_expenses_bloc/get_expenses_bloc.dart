import 'package:bloc/bloc.dart';
import 'package:expense_repository/expense_repository.dart';

import 'get_expenses_state.dart';

part 'get_expenses_event.dart';

class GetExpensesBloc extends Bloc<GetExpensesEvent, GetExpensesState> {
  final ExpenseRepository expenseRepository;

  GetExpensesBloc(this.expenseRepository) : super(GetExpensesInitial()) {
    on<GetExpenses>((event, emit) async {
      emit(GetExpensesLoading());
      try {
        List<Expense> expenses = await expenseRepository.getExpenses();
        emit(GetExpensesSuccess(expenses));
      } catch (_) {
        emit(GetExpensesFailure());
      }
    });
  }
}
