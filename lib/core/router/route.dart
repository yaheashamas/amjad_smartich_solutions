import 'package:amjad_smartich_solutions/features/home/presentation/pages/main_screen.dart';
import 'package:amjad_smartich_solutions/features/login/presentation/pages/login_screen.dart';
import 'package:flutter/cupertino.dart';

class RouteList {
  RouteList._();
  static const String initial = '/';
  //mainScreen
  static const String mainScreen = 'mainScreen';
}

class Routes {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings settings) => {
        RouteList.initial: (context) => const LoginScreen(),
        //onBoarding
        RouteList.mainScreen: (context) => const MainScreen(),
       
      };
}
