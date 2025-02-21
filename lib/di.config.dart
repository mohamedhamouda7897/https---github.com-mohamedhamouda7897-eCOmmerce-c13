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
import 'features/auth/data/data_sources/remote/auth_remote_ds.dart' as _i981;
import 'features/auth/data/data_sources/remote/auth_remote_ds_impl.dart'
    as _i393;
import 'features/auth/data/repository/auth_repo_impl.dart' as _i674;
import 'features/auth/domain/repository/auth_repo.dart' as _i38;
import 'features/auth/domain/usecases/login_usecase.dart' as _i206;
import 'features/auth/domain/usecases/sign_up_usecase.dart' as _i261;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i363;
import 'features/cart/data/datasources/cart_ds.dart' as _i80;
import 'features/cart/data/datasources/cart_ds_impl.dart' as _i269;
import 'features/cart/data/repository/cart_repo_impl.dart' as _i191;
import 'features/cart/domain/repository/cart_repo.dart' as _i661;
import 'features/cart/domain/usecases/get_cart_use_case.dart' as _i509;
import 'features/cart/presentation/bloc/cart_bloc.dart' as _i239;
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
import 'features/main_layout/home/domain/usecases/get_sub_categories_use_case.dart'
    as _i931;
import 'features/main_layout/home/presentation/bloc/home_bloc.dart' as _i123;
import 'features/products_screen/data/datasource/product_ds.dart' as _i188;
import 'features/products_screen/data/datasource/product_ds_impl.dart' as _i534;
import 'features/products_screen/data/repository/product_repo_impl.dart'
    as _i1006;
import 'features/products_screen/domain/repository/products_repo.dart' as _i850;
import 'features/products_screen/domain/usecases/add_to_cart.dart' as _i781;
import 'features/products_screen/domain/usecases/get_product_usecase.dart'
    as _i499;
import 'features/products_screen/presentation/bloc/product_bloc.dart' as _i477;

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
    gh.lazySingleton<_i237.APIManager>(() => _i237.APIManager());
    gh.factory<_i150.HomeRemoteDS>(
        () => _i373.HomeRemoteDSImpl(gh<_i237.APIManager>()));
    gh.factory<_i80.CartDS>(() => _i269.CartDSImpl(gh<_i237.APIManager>()));
    gh.factory<_i981.AuthRemoteDS>(
        () => _i393.AuthRemoteDSImpl(gh<_i237.APIManager>()));
    gh.factory<_i188.ProductDS>(
        () => _i534.ProductDSImpl(gh<_i237.APIManager>()));
    gh.factory<_i428.HomeRepo>(
        () => _i346.HomeRepoImpl(gh<_i150.HomeRemoteDS>()));
    gh.factory<_i38.AuthRepo>(
        () => _i674.AuthRepoImpl(gh<_i981.AuthRemoteDS>()));
    gh.factory<_i206.LoginUseCase>(
        () => _i206.LoginUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i716.GetCategoriesUseCase>(
        () => _i716.GetCategoriesUseCase(gh<_i428.HomeRepo>()));
    gh.factory<_i931.GetSubCategoriesUseCase>(
        () => _i931.GetSubCategoriesUseCase(gh<_i428.HomeRepo>()));
    gh.factory<_i661.CartRepo>(() => _i191.CartRepoImpl(gh<_i80.CartDS>()));
    gh.factory<_i509.GetCartUseCase>(
        () => _i509.GetCartUseCase(gh<_i661.CartRepo>()));
    gh.factory<_i261.SignUpUseCase>(
        () => _i261.SignUpUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i363.AuthBloc>(() => _i363.AuthBloc(
          gh<_i261.SignUpUseCase>(),
          gh<_i206.LoginUseCase>(),
        ));
    gh.factory<_i850.ProductRepo>(
        () => _i1006.ProductRepoImpl(gh<_i188.ProductDS>()));
    gh.factory<_i123.HomeBloc>(() => _i123.HomeBloc(
          gh<_i716.GetCategoriesUseCase>(),
          gh<_i509.GetCartUseCase>(),
        ));
    gh.factory<_i943.CategoriesBloc>(() => _i943.CategoriesBloc(
          gh<_i716.GetCategoriesUseCase>(),
          gh<_i931.GetSubCategoriesUseCase>(),
        ));
    gh.factory<_i239.CartBloc>(
        () => _i239.CartBloc(gh<_i509.GetCartUseCase>()));
    gh.factory<_i781.AddToCartUseCase>(
        () => _i781.AddToCartUseCase(gh<_i850.ProductRepo>()));
    gh.factory<_i499.GetProductsUseCase>(
        () => _i499.GetProductsUseCase(gh<_i850.ProductRepo>()));
    gh.factory<_i477.ProductBloc>(() => _i477.ProductBloc(
          gh<_i499.GetProductsUseCase>(),
          gh<_i781.AddToCartUseCase>(),
        ));
    return this;
  }
}
