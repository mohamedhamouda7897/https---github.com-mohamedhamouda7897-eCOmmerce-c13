import 'package:ecommerce_c13_friday/core/api/api_manager.dart';
import 'package:ecommerce_c13_friday/core/resources/chace_helper.dart';
import 'package:ecommerce_c13_friday/core/resources/endpoints.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/datasource/product_ds.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/CartModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/models/ProductModel.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductDS)
class ProductDSImpl implements ProductDS {
  APIManager apiManager;

  ProductDSImpl(this.apiManager);

  @override
  Future<ProductModel> getProduct({String? id}) async {
    try {
      var response = await apiManager.getRequest(EndPoints.products,
          params: id == null ? null : {"category[in]": id});

      ProductModel productModel = ProductModel.fromJson(response.data);
      return productModel;
    } catch (e) {
      print("error $e");
      rethrow;
    }
  }

  @override
  Future<CartModel> addToCart({String? id}) async {
    try {
      var token = SharedPrefs.get("token");
      var response = await apiManager.postRequest(EndPoints.cart, {
        "productId": id
      }, headers: {
        "token": token,
      });

      CartModel cartModel = CartModel.fromJson(response.data);
      return cartModel;
    } catch (e) {
      print("error $e");
      rethrow;
    }
  }
}
