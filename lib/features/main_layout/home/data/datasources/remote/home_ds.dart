import 'package:ecommerce_c13_friday/features/main_layout/home/data/models/CategoryModel.dart';

abstract class HomeDS{

  Future<CategoryModel> getCategories();
  Future<CategoryModel> getSubCategories(String catId);
}