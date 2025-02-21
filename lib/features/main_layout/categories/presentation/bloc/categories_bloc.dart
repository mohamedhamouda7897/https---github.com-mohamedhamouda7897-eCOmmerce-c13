import 'package:bloc/bloc.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/CategoriesModel.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/usecases/get_categories_use_case.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/usecases/get_sub_categories_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'categories_event.dart';

part 'categories_state.dart';

part 'categories_bloc.freezed.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  GetCategoriesUseCase getCategoriesUseCase;
  GetSubCategoriesUseCase getSubCategoriesUseCase;

  CategoriesBloc(this.getCategoriesUseCase, this.getSubCategoriesUseCase)
      : super(const CategoriesState.initial()) {
    on<CategoriesEvent>((event, emit) {});
    on<ChangeCategoryEvent>((event, emit) {
      emit(state.copyWith(selectedIndex: event.index));
      add(CategoriesGetSubCategoriesEvent(
          state.model?.data?[state.selectedIndex].id ?? ""));
    });

    on<CategoriesGetCategoriesEvent>((event, emit) async {
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
          add(CategoriesGetSubCategoriesEvent(r.data?.first.id ?? ""));
        },
      );
    });
    on<CategoriesGetSubCategoriesEvent>((event, emit) async {
      emit(state.copyWith(getSubCategoriesState: RequestState.loading));
      // getCategoriesUseCase.call();

      var result = await getSubCategoriesUseCase(event.id);
      result.fold(
        (l) {
          emit(state.copyWith(
              getSubCategoriesState: RequestState.error, subFailures: l));
        },
        (r) {
          emit(state.copyWith(
            getSubCategoriesState: RequestState.success,
            subModel: r,
          ));
        },
      );
    });
  }
}
