part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default(RequestState.init) RequestState getCategoriesState,
    @Default(RequestState.init) RequestState getCartState,
    CategoriesModel? model,
    CartModel? cartModel,
    RouteFailures? failures,
  }) = _Initial;
}
