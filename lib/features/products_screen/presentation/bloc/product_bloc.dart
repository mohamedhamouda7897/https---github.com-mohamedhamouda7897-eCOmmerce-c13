import 'package:bloc/bloc.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/CartModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/domain/usecases/add_to_cart.dart';
import 'package:ecommerce_c13_friday/features/products_screen/domain/usecases/get_product_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_event.dart';

part 'product_state.dart';

part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  GetProductsUseCase getProductsUseCase;

  AddToCartUseCase addToCartUseCase;

  ProductBloc(this.getProductsUseCase, this.addToCartUseCase)
      : super(const ProductState.initial()) {
    on<GetProductsEvent>((event, emit) async {
      emit(state.copyWith(getProductsState: RequestState.loading));
      // getCategoriesUseCase.call();

      var result = await getProductsUseCase();
      result.fold(
        (l) {
          print(l.message);
          emit(state.copyWith(
              getProductsState: RequestState.error, failures: l));
        },
        (r) {
          emit(state.copyWith(
            getProductsState: RequestState.success,
            model: r,
          ));
        },
      );
    });

    on<AddToCartEvent>((event, emit) async {
      emit(state.copyWith(addToCartState: RequestState.loading));
      // getCategoriesUseCase.call();

      var result = await addToCartUseCase(id: event.prodId);
      result.fold(
        (l) {
          print(l.message);
          emit(state.copyWith(
              addToCartState: RequestState.error, cartFailures: l));
        },
        (r) {
          emit(state.copyWith(
            addToCartState: RequestState.success,
            cartModel: r,
          ));
        },
      );
    });
  }
}
