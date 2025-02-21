import 'package:ecommerce_c13_friday/core/api/api_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/endpoints.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/datasources/remote/home_remote_ds.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/CategoriesModel.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRemoteDS)
class HomeRemoteDSImpl implements HomeRemoteDS {
  APIManager apiManager;

  HomeRemoteDSImpl(this.apiManager);

  @override
  Future<CategoriesModel> getCategories() async {
    var response = await apiManager.getRequest(EndPoints.categories);

    CategoriesModel categoriesModel = CategoriesModel.fromJson(response.data);
    return categoriesModel;
  }

  @override
  Future<CategoriesModel> getSubCategories(String id) async{
    var response = await apiManager.getRequest(EndPoints.subCategories(id));

    CategoriesModel categoriesModel = CategoriesModel.fromJson(response.data);
    return categoriesModel;
  }
}
