part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default(RequestState.init) RequestState getCategoriesState,
    CategoriesModel? model,
    RouteFailures? fail,
  }) = _Initial;
}
