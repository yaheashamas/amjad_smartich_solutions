import 'package:amjad_smartich_solutions/core/di/di.dart';
import 'package:amjad_smartich_solutions/core/router/fade_page_route_builder.dart';
import 'package:amjad_smartich_solutions/core/router/route.dart';
import 'package:amjad_smartich_solutions/core/theme/app_theme.dart';
import 'package:amjad_smartich_solutions/features/login/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          themeMode: ThemeMode.light,
          home: const LoginScreen(),

          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: const TextScaler.linear(0.9),
            ),
            child: child!,
          ),
          // initialRoute: RouteList.initial,
          onGenerateRoute: (settings) {
            final routes = Routes.getRoutes(settings);
            final WidgetBuilder? builder = routes[settings.name];
            return FadePageRouteBuilder(
              builder: builder!,
              settings: settings,
            );
          },
        );
      },
    );
  }
}
