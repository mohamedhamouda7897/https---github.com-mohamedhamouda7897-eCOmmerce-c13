import 'package:bloc/bloc.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_c13_friday/features/cart/domain/usecases/get_cart_use_case.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/CategoriesModel.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/usecases/get_categories_use_case.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/CartModel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetCategoriesUseCase getCategoriesUseCase;

  GetCartUseCase getCartUseCase;

  HomeBloc(this.getCategoriesUseCase, this.getCartUseCase)
      : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        started: () {},
        getCart: () async {
          emit(state.copyWith(getCartState: RequestState.loading));
          // getCategoriesUseCase.call();

          var result = await getCartUseCase();
          result.fold(
            (l) {
              emit(state.copyWith(
                  getCartState: RequestState.error, failures: l));
            },
            (r) {
              emit(state.copyWith(
                getCartState: RequestState.success,
                cartModel: r,
              ));
            },
          );
        },
        getCategories: () async => await _getCategories(emit),
      );
    });
  }

  Future<void> _getCategories(Emitter<HomeState> emit) async {
    emit(state.copyWith(getCategoriesState: RequestState.loading));
    // getCategoriesUseCase.call();

    var result = await getCategoriesUseCase();
    result.fold(
      (l) {
        emit(state.copyWith(
            getCategoriesState: RequestState.error, failures: l));
      },
      (r) {
        emit(state.copyWith(
          getCategoriesState: RequestState.success,
          model: r,
        ));
      },
    );
  }
}
