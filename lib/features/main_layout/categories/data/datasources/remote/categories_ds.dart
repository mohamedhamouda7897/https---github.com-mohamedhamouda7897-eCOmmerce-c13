import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/categories_model.dart';

abstract class CategoriesDS {
  Future<CategoriesModel> getSubCategories(String catId);
}
