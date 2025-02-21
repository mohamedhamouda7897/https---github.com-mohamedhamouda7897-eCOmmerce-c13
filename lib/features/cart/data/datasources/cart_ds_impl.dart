import 'package:ecommerce_c13_friday/core/api/api_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/chace_helper.dart';
import 'package:ecommerce_c13_friday/core/resources/endpoints.dart';
import 'package:ecommerce_c13_friday/features/cart/data/datasources/cart_ds.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/CartModel.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartDS)
class CartDSImpl implements CartDS {
  APIManager apiManager;

  CartDSImpl(this.apiManager);

  @override
  Future<CartModel> getCart() async {
    try {
      var token = SharedPrefs.get("token");
      var response = await apiManager
          .getRequest(EndPoints.cart, headers: {'token': token});

      var cartModel = CartModel.fromJson(response.data);
      return cartModel;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
