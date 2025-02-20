import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/categories_model.dart';

abstract class HomeRemoteDS {
  Future<CategoriesModel> getCategories();
}
