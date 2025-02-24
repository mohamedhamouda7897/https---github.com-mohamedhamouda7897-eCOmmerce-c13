part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial({
    @Default(RequestState.init)RequestState getCategoriesState,
    @Default(RequestState.init)RequestState getSubCategoriesState,
    CategoryEntity? entity,
    CategoryEntity? subEntity,
    RouteFailures? failure,
    RouteFailures? subFailure,
    @Default(0)int selectedIndex,
}) = _Initial;
}
