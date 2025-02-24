import 'package:ecommerce_c13_friday/core/api/api_manager.dart';
import 'package:ecommerce_c13_friday/core/api/endPoints.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/datasources/remote/home_ds.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeDS)
class HomeDSImpl implements HomeDS {
  ApiManager apiManager;

  HomeDSImpl(this.apiManager);

  @override
  Future<CategoryModel> getCategories() async {
    var response = await apiManager.getRequest(endPoint: EndPoints.categories);

    CategoryModel categoryModel = CategoryModel.fromJson(response.data);
    return categoryModel;
  }

  @override
  Future<CategoryModel> getSubCategories(String catId) async {
    var response =
        await apiManager.getRequest(endPoint: EndPoints.subCategories(catId));

    CategoryModel categoryModel = CategoryModel.fromJson(response.data);
    return categoryModel;
  }
}
