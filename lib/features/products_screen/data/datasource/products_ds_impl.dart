import 'package:ecommerce_c13_friday/core/api/api_manager.dart';
import 'package:ecommerce_c13_friday/core/api/endPoints.dart';
import 'package:ecommerce_c13_friday/core/resources/cache_helper.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/datasource/products_ds.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/CartModel.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/CartResponse.dart';
import 'package:ecommerce_c13_friday/features/products_screen/data/model/ProductModel.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductsDS)
class ProductsDSImpl implements ProductsDS {
  ApiManager apiManager;

  ProductsDSImpl(this.apiManager);

  @override
  Future<ProductModel> getProducts({String? catId}) async {
    var response = await apiManager.getRequest(
        endPoint: EndPoints.products,
        params: catId == null ? null : {"category[in]": catId});

    ProductModel productModel = ProductModel.fromJson(response.data);
    return productModel;
  }

  @override
  Future<CartModel> addToCart({required String prodId}) async {
    var token = SharedPreferencesManager.read("TOKEN");
    var response =
        await apiManager.postRequest(endPoint: EndPoints.cart, headers: {
      "token": token,
    }, body: {
      "productId": prodId
    });

    CartModel cartModel = CartModel.fromJson(response.data);
    return cartModel;
  }

  @override
  Future<CartResponse> getCartData() async {
    var token = SharedPreferencesManager.read("TOKEN");
    var response = await apiManager.getRequest(
      endPoint: EndPoints.cart,
      headers: {
        "token": token,
      },
    );

    CartResponse cartResponse = CartResponse.fromJson(response.data);
    return cartResponse;
  }
}
