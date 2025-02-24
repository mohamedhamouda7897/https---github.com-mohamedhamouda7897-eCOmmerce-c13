import 'package:bloc/bloc.dart';
import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';
import 'package:ecommerce_c13_friday/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/CartResponse.dart';
import 'package:ecommerce_c13_friday/features/products_screen/domain/usecases/get_cart_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_event.dart';

part 'cart_state.dart';

part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  GetCartDataUseCase getCartDataUseCase;

  CartBloc(this.getCartDataUseCase) : super(const CartState.initial()) {
    on<GetCartDataEvent>((event, emit) async {
      emit(state.copyWith(getCartState: RequestState.loading));
      // getCategoriesUseCase.call()
      var result = await getCartDataUseCase();

      result.fold(
        (l) {
          emit(
              state.copyWith(getCartState: RequestState.error, failure: l));
        },
        (r) {
          emit(state.copyWith(
              getCartState: RequestState.success, cartModel: r));
        },
      );
    });
  }
}
