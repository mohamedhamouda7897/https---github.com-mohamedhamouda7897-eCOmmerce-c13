import 'package:ecommerce_c13_friday/core/api/api_manager.dart';
import 'package:ecommerce_c13_friday/core/api/end_points.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/datasources/remote/home_remote_ds.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/categories_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRemoteDS)
class HomeRemoteDSImpl implements HomeRemoteDS {
  ApiManager apiManager;

  HomeRemoteDSImpl(this.apiManager);

  @override
  Future<CategoriesModel> getCategories() async {
    var response = await apiManager.getData(endPoint: EndPoints.categories);

    CategoriesModel categoriesModel = CategoriesModel.fromJson(response.data);
    return categoriesModel;
  }
}
