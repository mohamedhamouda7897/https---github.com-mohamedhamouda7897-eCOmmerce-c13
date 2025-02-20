import 'package:bloc/bloc.dart';
import 'package:ecommerce_c13_friday/core/failures/failures.dart';
import 'package:ecommerce_c13_friday/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_c13_friday/features/main_layout/categories/domain/usecases/get_sub_category_use_case.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/categories_model.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/domain/usecases/get_categories_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'categories_event.dart';

part 'categories_state.dart';

part 'categories_bloc.freezed.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  GetCategoriesUseCase getCategoriesUseCase;
  GetSubCategoriesUceCase getSubCategoriesUceCase;

  CategoriesBloc(this.getCategoriesUseCase, this.getSubCategoriesUceCase)
      : super(const CategoriesState.initial()) {
    on<CategoriesEvent>((event, emit) {});

    on<GetCategoriesEvent>(
      (event, emit) async {
        emit(state.copyWith(getCategoriesState: RequestState.loading));

        // getCategoriesUseCase.call();
        var result = await getCategoriesUseCase();
        result.fold(
          (l) {
            emit(state.copyWith(
                getCategoriesState: RequestState.error, fail: l));
          },
          (r) {
            emit(state.copyWith(
                getCategoriesState: RequestState.loaded, model: r));
            add(GetSubCategoriesEvent(r.data?.first.sId ?? ""));
          },
        );
      },
    );

    on<GetSubCategoriesEvent>(
      (event, emit) async {
        emit(state.copyWith(getSubCategoriesState: RequestState.loading));

        // getCategoriesUseCase.call();
        var result = await getSubCategoriesUceCase(event.catId);
        result.fold(
          (l) {
            emit(state.copyWith(
                getSubCategoriesState: RequestState.error, subFail: l));
          },
          (r) {
            emit(state.copyWith(
                getSubCategoriesState: RequestState.loaded, subModel: r));
          },
        );
      },
    );

    on<ChangeCategoryEvent>(
      (event, emit) {
        emit(state.copyWith(selectedIndex: event.index));
        add(GetSubCategoriesEvent(
            state.model?.data?[state.selectedIndex].sId ?? ""));
      },
    );
  }
}
