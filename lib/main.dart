import 'package:coffe_app/constants.dart';
import 'package:coffe_app/screens/about/about_screen.dart';
import 'package:coffe_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // light Theme
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: ThemeData.light().textTheme.apply(
          bodyColor: AppConstants.textColor,
        ),

        cardTheme: CardThemeData(color: Colors.white),
        colorScheme: ColorScheme.light(
          surface: Color(0xfff8f6f6),
          surfaceContainer: Colors.white,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 8,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppConstants.primaryColor,
          selectedItemColor: AppConstants.primaryColor,
        ),
      ),

      // dark theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        textTheme: ThemeData.light().textTheme.apply(bodyColor: Colors.white),
        cardTheme: CardThemeData(color: AppConstants.darkThemeCard),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppConstants.darkThemeCard,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppConstants.primaryColor,
          selectedItemColor: AppConstants.primaryColor,
        ),

        colorScheme: ColorScheme.dark(
          surface: AppConstants.darkTheme,
          surfaceContainer: AppConstants.darkThemeCard,
        ),
      ),

      themeMode: ThemeMode.system,


      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
