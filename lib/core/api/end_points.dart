class EndPoints {
  static const String signUp = "/api/v1/auth/signup";
  static const String login = "/api/v1/auth/signin";
  static const String categories = "/api/v1/categories";

  static String subCategoryEndPoint(String id) {
    return "/api/v1/categories/$id/subcategories";
  }
}
