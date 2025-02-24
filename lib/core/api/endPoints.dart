class EndPoints {
  static const String signUp = "/api/v1/auth/signup";
  static const String signIn = "/api/v1/auth/signin";
  static const String categories = "/api/v1/categories";
  static const String products = "/api/v1/products";
  static const String cart = "/api/v1/cart";


  static String subCategories(String id) =>
      "/api/v1/categories/$id/subcategories";
}
