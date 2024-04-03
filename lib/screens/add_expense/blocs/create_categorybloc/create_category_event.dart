part of 'create_category_bloc.dart';

// This class defines an abstract event for creating a category.
abstract class CreateCategoryEvent extends Equatable {
  const CreateCategoryEvent();

  @override
  List<Object> get props => [];
}

// This class represents an event for creating a category.
class CreateCategory extends CreateCategoryEvent {
  final Category category;

  const CreateCategory(this.category);

  @override
  List<Object> get props => [category];
}
