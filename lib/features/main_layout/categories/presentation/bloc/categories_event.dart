part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.started() = _Started;
  const factory CategoriesEvent.getCategories() = CategoriesGetCategoriesEvent;
  const factory CategoriesEvent.getSubCategories(String id) = CategoriesGetSubCategoriesEvent;
  const factory CategoriesEvent.changeCategory(int index ) = ChangeCategoryEvent;

}
