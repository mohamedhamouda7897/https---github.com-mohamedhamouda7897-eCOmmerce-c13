part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial({
    @Default(RequestState.init) RequestState getProductsState,
    @Default(RequestState.init) RequestState addToCartState,
    ProductModel? model,
    CartModel? cartModel,
    RouteFailures? failures,
    RouteFailures? cartFailures,
}) = _Initial;
}
