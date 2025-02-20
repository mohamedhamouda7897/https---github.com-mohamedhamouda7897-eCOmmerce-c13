part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.started() = _Started;

  const factory CategoriesEvent.getCategories() = GetCategoriesEvent;

  const factory CategoriesEvent.getSubCategories(String catId) =
      GetSubCategoriesEvent;

  const factory CategoriesEvent.changeCategory(int index) = ChangeCategoryEvent;
}
