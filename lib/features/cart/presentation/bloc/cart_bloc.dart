import 'package:bloc/bloc.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_c13_friday/features/cart/domain/usecases/get_cart_use_case.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/CartModel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_event.dart';

part 'cart_state.dart';

part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  GetCartUseCase getCartUseCase;

  CartBloc(this.getCartUseCase) : super(const CartState.initial()) {
    on<GetCartEvent>((event, emit) async {
      emit(state.copyWith(getCartState: RequestState.loading));
      // getCategoriesUseCase.call();

      var result = await getCartUseCase();
      result.fold(
        (l) {
          emit(state.copyWith(getCartState: RequestState.error, failures: l));
        },
        (r) {
          emit(state.copyWith(
            getCartState: RequestState.success,
            model: r,
          ));
        },
      );
    });
  }
}
