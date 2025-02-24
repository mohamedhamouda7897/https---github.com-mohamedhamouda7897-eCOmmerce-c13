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
import 'features/auth/domain/usecases/signup_usecase.dart' as _i100;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i363;
import 'features/cart/presentation/cart_bloc.dart' as _i264;
import 'features/main_layout/categories/presentation/bloc/categories_bloc.dart'
    as _i943;
import 'features/main_layout/home/data/datasources/remote/home_ds.dart'
    as _i771;
import 'features/main_layout/home/data/datasources/remote/home_ds_impl.dart'
    as _i997;
import 'features/main_layout/home/data/repository/home_repo_impl.dart' as _i346;
import 'features/main_layout/home/domain/repository/home_repo.dart' as _i428;
import 'features/main_layout/home/domain/usecases/get_categories_usecase.dart'
    as _i646;
import 'features/main_layout/home/domain/usecases/get_sub_categories_usecase.dart'
    as _i277;
import 'features/main_layout/home/presentation/bloc/home_bloc.dart' as _i123;
import 'features/products_screen/data/datasource/products_ds.dart' as _i459;
import 'features/products_screen/data/datasource/products_ds_impl.dart'
    as _i582;
import 'features/products_screen/data/repo/products_repo_impll.dart' as _i382;
import 'features/products_screen/domain/repo/products_repo.dart' as _i801;
import 'features/products_screen/domain/usecases/add_to_cart.dart' as _i781;
import 'features/products_screen/domain/usecases/get_cart_data.dart' as _i690;
import 'features/products_screen/domain/usecases/get_products.dart' as _i737;
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
    gh.lazySingleton<_i237.ApiManager>(() => _i237.ApiManager());
    gh.factory<_i459.ProductsDS>(
        () => _i582.ProductsDSImpl(gh<_i237.ApiManager>()));
    gh.factory<_i771.HomeDS>(() => _i997.HomeDSImpl(gh<_i237.ApiManager>()));
    gh.factory<_i981.AuthRemoteDS>(
        () => _i393.AuthRemoteDSImpl(gh<_i237.ApiManager>()));
    gh.factory<_i38.AuthRepo>(
        () => _i674.AuthRepoImpl(gh<_i981.AuthRemoteDS>()));
    gh.factory<_i206.LoginUseCase>(
        () => _i206.LoginUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i801.ProductsRepo>(
        () => _i382.ProductsRepoImpl(gh<_i459.ProductsDS>()));
    gh.factory<_i100.SignUpUseCase>(
        () => _i100.SignUpUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i428.HomeRepo>(() => _i346.HomeRepoImpl(gh<_i771.HomeDS>()));
    gh.factory<_i363.AuthBloc>(() => _i363.AuthBloc(
          gh<_i100.SignUpUseCase>(),
          gh<_i206.LoginUseCase>(),
        ));
    gh.factory<_i737.GetProductUseCase>(
        () => _i737.GetProductUseCase(gh<_i801.ProductsRepo>()));
    gh.factory<_i781.AddToCartUseCase>(
        () => _i781.AddToCartUseCase(gh<_i801.ProductsRepo>()));
    gh.factory<_i690.GetCartDataUseCase>(
        () => _i690.GetCartDataUseCase(gh<_i801.ProductsRepo>()));
    gh.factory<_i477.ProductBloc>(() => _i477.ProductBloc(
          gh<_i737.GetProductUseCase>(),
          gh<_i781.AddToCartUseCase>(),
        ));
    gh.factory<_i646.GetCategoriesUseCase>(
        () => _i646.GetCategoriesUseCase(gh<_i428.HomeRepo>()));
    gh.factory<_i277.GetSubCategoriesUseCase>(
        () => _i277.GetSubCategoriesUseCase(gh<_i428.HomeRepo>()));
    gh.factory<_i264.CartBloc>(
        () => _i264.CartBloc(gh<_i690.GetCartDataUseCase>()));
    gh.factory<_i943.CategoriesBloc>(() => _i943.CategoriesBloc(
          gh<_i646.GetCategoriesUseCase>(),
          gh<_i277.GetSubCategoriesUseCase>(),
        ));
    gh.factory<_i123.HomeBloc>(() => _i123.HomeBloc(
          gh<_i646.GetCategoriesUseCase>(),
          gh<_i690.GetCartDataUseCase>(),
        ));
    return this;
  }
}
