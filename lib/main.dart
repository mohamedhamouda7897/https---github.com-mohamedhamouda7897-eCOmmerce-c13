import 'package:ecommerce_c13_friday/core/resources/cache_helper.dart';
import 'package:ecommerce_c13_friday/core/routes_manager/routes.dart';
import 'package:ecommerce_c13_friday/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'core/routes_manager/route_generator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesManager.init();
  configureDependencies();

  var token = SharedPreferencesManager.read<String>("TOKEN");
  runApp(MainApp(
    loggedIn: token == null ? false : true,
  ));
}

class MainApp extends StatelessWidget {
  final bool loggedIn;

  const MainApp({required this.loggedIn, super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: child,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: loggedIn ? Routes.mainRoute : Routes.signInRoute,
      ),
    );
  }
}
