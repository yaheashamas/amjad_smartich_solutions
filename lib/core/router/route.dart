import 'package:amjad_smartich_solutions/features/details_salon/presentation/pages/details_screen.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/pages/main_screen.dart';
import 'package:amjad_smartich_solutions/features/login/presentation/pages/login_screen.dart';
import 'package:flutter/cupertino.dart';

class RouteList {
  RouteList._();
  static const String initial = '/';
  static const String mainScreen = 'mainScreen';
  static const String detailsScreen = 'detailsScreen';
}

class Routes {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings settings) => {
        RouteList.initial: (context) => const LoginScreen(),
        RouteList.mainScreen: (context) => const MainScreen(),
        RouteList.detailsScreen: (context) => const DetailsScreen(),
       
      };
}
