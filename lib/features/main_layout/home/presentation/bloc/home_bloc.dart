import 'package:bloc/bloc.dart';
import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';
import 'package:ecommerce_c13_friday/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/entity/categoryEntity.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/usecases/get_categories_usecase.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/CartResponse.dart';
import 'package:ecommerce_c13_friday/features/products_screen/domain/usecases/get_cart_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetCategoriesUseCase getCategoriesUseCase;
  GetCartDataUseCase getCartDataUseCase;

  HomeBloc(this.getCategoriesUseCase, this.getCartDataUseCase)
      : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        started: () {},
        getCart: () async => await _getCart(emit),
        getCategories: () async => await _getCategories(emit),
      );
    });
  }

  _getCart(Emitter<HomeState> emit) async {
    emit(state.copyWith(getCartState: RequestState.loading));
    // getCategoriesUseCase.call()
    var result = await getCartDataUseCase();

    result.fold(
      (l) {
        emit(state.copyWith(getCartState: RequestState.error, cartFailures: l));
      },
      (r) {
        emit(state.copyWith(
            getCartState: RequestState.success, cartResponse: r));
      },
    );
  }

  _getCategories(Emitter<HomeState> emit) async {
    emit(state.copyWith(getCategoriesState: RequestState.loading));
    // getCategoriesUseCase.call()
    var result = await getCategoriesUseCase();

    result.fold(
      (l) {
        emit(
            state.copyWith(getCategoriesState: RequestState.error, failure: l));
      },
      (r) {
        emit(state.copyWith(
            getCategoriesState: RequestState.success, entity: r));
      },
    );
  }
}
