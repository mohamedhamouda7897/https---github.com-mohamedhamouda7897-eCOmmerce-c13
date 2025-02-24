part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.started() = _Started;
  const factory CategoriesEvent.getCategories() = TabGetCategoriesEvent;
  const factory CategoriesEvent.changeCategory(int index) = ChangeCategoryEvent;
  const factory CategoriesEvent.getSubCategories(String catId) = TabGetSubCategoriesEvent;

}
