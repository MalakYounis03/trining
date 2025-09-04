import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/core/utils/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            fontFamily: '29ltbukra',
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: AppColors.primary,
              selectionColor: AppColors.primary,
              selectionHandleColor: AppColors.primary,
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            primaryColor: AppColors.primary,
            scaffoldBackgroundColor: AppColors.white,
            appBarTheme: AppBarTheme(
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
          ),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [Locale('ar'), Locale('en')],
          locale: Locale('ar'),
          initialRoute: AppRoutes.splash,
          //initialRoute: AppRoutes.homeView,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
