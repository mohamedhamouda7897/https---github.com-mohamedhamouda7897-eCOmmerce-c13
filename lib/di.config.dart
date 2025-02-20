// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'core/api/api_manager.dart' as _i237;
import 'features/auth/data/data_sources/remote/auth_ds.dart' as _i975;
import 'features/auth/data/data_sources/remote/auth_ds_impl.dart' as _i502;
import 'features/auth/data/repository/auth_repo_impl.dart' as _i674;
import 'features/auth/domain/repository/auth_repo.dart' as _i38;
import 'features/auth/domain/usecases/login_use_case.dart' as _i851;
import 'features/auth/domain/usecases/sign_up_use_case.dart' as _i477;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i363;
import 'features/main_layout/categories/data/datasources/remote/categories_ds.dart'
    as _i424;
import 'features/main_layout/categories/data/datasources/remote/categories_ds_impl.dart'
    as _i687;
import 'features/main_layout/categories/data/repository/categories_repo_impl.dart'
    as _i268;
import 'features/main_layout/categories/domain/repository/categories_repo.dart'
    as _i805;
import 'features/main_layout/categories/domain/usecases/get_sub_category_use_case.dart'
    as _i165;
import 'features/main_layout/categories/presentation/bloc/categories_bloc.dart'
    as _i943;
import 'features/main_layout/home/data/datasources/remote/home_remote_ds.dart'
    as _i150;
import 'features/main_layout/home/data/datasources/remote/home_remote_ds_impl.dart'
    as _i373;
import 'features/main_layout/home/data/repository/home_repo_impl.dart' as _i346;
import 'features/main_layout/home/domain/repository/home_repo.dart' as _i428;
import 'features/main_layout/home/domain/usecases/get_categories_use_case.dart'
    as _i716;
import 'features/main_layout/home/presentation/bloc/home_bloc.dart' as _i123;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i237.ApiManager>(() => _i237.ApiManager());
    gh.factory<_i424.CategoriesDS>(
        () => _i687.CategoriesDSImpl(gh<_i237.ApiManager>()));
    gh.factory<_i150.HomeRemoteDS>(
        () => _i373.HomeRemoteDSImpl(gh<_i237.ApiManager>()));
    gh.factory<_i805.CategoriesRepo>(
        () => _i268.CategoriesRepoImpl(gh<_i424.CategoriesDS>()));
    gh.factory<_i975.AuthDS>(() => _i502.AuthDSImpl(gh<_i237.ApiManager>()));
    gh.factory<_i428.HomeRepo>(
        () => _i346.HomeRepoImpl(gh<_i150.HomeRemoteDS>()));
    gh.factory<_i38.AuthRepo>(() => _i674.AuthRepoImpl(gh<_i975.AuthDS>()));
    gh.factory<_i165.GetSubCategoriesUceCase>(
        () => _i165.GetSubCategoriesUceCase(gh<_i805.CategoriesRepo>()));
    gh.factory<_i716.GetCategoriesUseCase>(
        () => _i716.GetCategoriesUseCase(gh<_i428.HomeRepo>()));
    gh.factory<_i851.LoginUseCase>(
        () => _i851.LoginUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i477.SignUpUseCase>(
        () => _i477.SignUpUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i363.AuthBloc>(() => _i363.AuthBloc(
          gh<_i477.SignUpUseCase>(),
          gh<_i851.LoginUseCase>(),
        ));
    gh.factory<_i943.CategoriesBloc>(() => _i943.CategoriesBloc(
          gh<_i716.GetCategoriesUseCase>(),
          gh<_i165.GetSubCategoriesUceCase>(),
        ));
    gh.factory<_i123.HomeBloc>(
        () => _i123.HomeBloc(gh<_i716.GetCategoriesUseCase>()));
    return this;
  }
}
