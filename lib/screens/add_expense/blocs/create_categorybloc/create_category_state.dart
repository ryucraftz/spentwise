part of 'create_category_bloc.dart';

// This class defines the states related to creating a category.
sealed class CreateCategoryState extends Equatable {
  const CreateCategoryState();

  @override
  List<Object> get props => [];
}

// This class represents the initial state for creating a category.
class CreateCategoryInitial extends CreateCategoryState {}

// This class represents the failure state for creating a category.
class CreateCategoryFailure extends CreateCategoryState {}

// This class represents the loading state for creating a category.
class CreateCategoryLoading extends CreateCategoryState {}

// This class represents the success state for creating a category.
class CreateCategorySuccess extends CreateCategoryState {}
