part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial({
    @Default(RequestState.init) RequestState getCategoriesState,
    @Default(RequestState.init) RequestState getSubCategoriesState,
    CategoriesModel? model,
    @Default(0) int selectedIndex,
    CategoriesModel? subModel,
    RouteFailures? failures,
    RouteFailures? subFailures,
  }) = _Initial;
}
