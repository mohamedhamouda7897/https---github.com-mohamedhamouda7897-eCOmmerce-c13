import 'package:ecommerce_c13_friday/core/api/api_manager.dart';
import 'package:ecommerce_c13_friday/core/api/end_points.dart';
import 'package:ecommerce_c13_friday/features/main_layout/categories/data/datasources/remote/categories_ds.dart';
import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/categories_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoriesDS)
class CategoriesDSImpl implements CategoriesDS {
  ApiManager apiManager;

  CategoriesDSImpl(this.apiManager);

  @override
  Future<CategoriesModel> getSubCategories(String catId) async {
    var response = await apiManager.getData(
        endPoint: EndPoints.subCategoryEndPoint(catId));

    CategoriesModel categoriesModel = CategoriesModel.fromJson(response.data);
    return categoriesModel;
  }
}
