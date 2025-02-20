import 'package:bloc/bloc.dart';
import 'package:ecommerce_c13_friday/core/failures/failures.dart';
import 'package:ecommerce_c13_friday/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/categories_model.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/usecases/get_categories_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetCategoriesUseCase getCategoriesUseCase;

  static HomeBloc get(context) => BlocProvider.of(context);

  HomeBloc(this.getCategoriesUseCase) : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        started: () {},
        categories: () async => await _getCategories(emit),
      );
    });
  }

  Future<void> _getCategories(Emitter<HomeState> emit) async {
    emit(state.copyWith(getCategoriesState: RequestState.loading));

    // getCategoriesUseCase.call();
    var result = await getCategoriesUseCase();
    result.fold(
      (l) {
        emit(state.copyWith(getCategoriesState: RequestState.error, fail: l));
      },
      (r) {
        emit(state.copyWith(getCategoriesState: RequestState.loaded, model: r));
      },
    );
  }
}
