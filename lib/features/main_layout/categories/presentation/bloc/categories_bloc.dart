import 'package:bloc/bloc.dart';
import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';
import 'package:ecommerce_c13_friday/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/entity/categoryEntity.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/usecases/get_categories_usecase.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/usecases/get_sub_categories_usecase.dart';
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
    on<TabGetCategoriesEvent>((event, emit) async {
      emit(state.copyWith(getCategoriesState: RequestState.loading));
      // getCategoriesUseCase.call()
      var result = await getCategoriesUseCase();

      result.fold(
        (l) {
          emit(state.copyWith(
              getCategoriesState: RequestState.error, failure: l));
        },
        (r) {
          emit(state.copyWith(
              getCategoriesState: RequestState.success, entity: r));
          add(TabGetSubCategoriesEvent(state.entity?.data?.first.id ?? ""));
        },
      );
    });

    on<ChangeCategoryEvent>(
      (event, emit) {
        emit(state.copyWith(selectedIndex: event.index));
        add(TabGetSubCategoriesEvent(
            state.entity?.data?[event.index].id ?? ""));
      },
    );
    on<TabGetSubCategoriesEvent>((event, emit) async {
      emit(state.copyWith(getSubCategoriesState: RequestState.loading));
      // getCategoriesUseCase.call()
      var result = await getSubCategoriesUseCase(event.catId);

      result.fold(
        (l) {
          emit(state.copyWith(
              getSubCategoriesState: RequestState.error, subFailure: l));
        },
        (r) {
          emit(state.copyWith(
              getSubCategoriesState: RequestState.success, subEntity: r));
        },
      );
    });
  }
}
