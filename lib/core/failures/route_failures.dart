abstract class RouteFailures {
  String message;

  RouteFailures(this.message);

  @override
  String toString() {
    return message;
  }
}
