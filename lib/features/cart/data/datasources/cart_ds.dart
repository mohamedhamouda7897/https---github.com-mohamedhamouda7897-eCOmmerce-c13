import 'package:ecommerce_c13_friday/features/products_screen/data/models/CartModel.dart';

abstract class CartDS{


 Future<CartModel> getCart();
}