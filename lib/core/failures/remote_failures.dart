import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';

class RemoteFailures extends RouteFailures {
  RemoteFailures(super.message);
}

class LocalFailures extends RouteFailures {
  LocalFailures(super.message);
}

class GeneralFailures extends RouteFailures {
  GeneralFailures(super.message);
}
