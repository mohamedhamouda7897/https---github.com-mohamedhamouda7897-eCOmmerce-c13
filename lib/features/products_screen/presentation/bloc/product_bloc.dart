import 'package:bloc/bloc.dart';
import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';
import 'package:ecommerce_c13_friday/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/CartModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/ProductModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/domain/usecases/add_to_cart.dart';
import 'package:ecommerce_c13_friday/features/products_screen/domain/usecases/get_products.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_event.dart';

part 'product_state.dart';

part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  GetProductUseCase getProductUseCase;
  AddToCartUseCase addToCartUseCase;

  ProductBloc(this.getProductUseCase,this.addToCartUseCase) : super(const ProductState.initial()) {
    on<GetProductsEvent>((event, emit) async {
      emit(state.copyWith(getProductsState: RequestState.loading));
      // getCategoriesUseCase.call()
      var result = await getProductUseCase(catId: event.catId);

      result.fold(
        (l) {
          emit(
              state.copyWith(getProductsState: RequestState.error, failure: l));
        },
        (r) {
          emit(state.copyWith(
              getProductsState: RequestState.success, entity: r));
        },
      );
    });

    on<AddProductToCartEvent>((event, emit) async {
      emit(state.copyWith(addToCartState: RequestState.loading));
      // getCategoriesUseCase.call()
      var result = await addToCartUseCase(prodId: event.prodId);

      result.fold(
        (l) {
          emit(state.copyWith(
              addToCartState: RequestState.error, cartFailure: l));
        },
        (r) {
          emit(state.copyWith(
              addToCartState: RequestState.success, cartModel: r));
        },
      );
    });
  }
}
