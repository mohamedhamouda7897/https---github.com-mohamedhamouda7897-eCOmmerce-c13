part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default(RequestState.init)RequestState getCategoriesState,
    @Default(RequestState.init)RequestState getCartState,
    CategoryEntity? entity,
    CartResponse? cartResponse,
    RouteFailures? failure,
    RouteFailures? cartFailures,
}) = _Initial;
}
