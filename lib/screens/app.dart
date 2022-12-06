import 'package:flutter/material.dart';
import 'package:flutter_base_sample/constants/strings.dart';
import 'package:flutter_base_sample/screens/splash/splash_screen.dart';
import 'package:flutter_base_sample/themes/colors.dart';
// import 'package:flutter_base_sample/utils/routes/routes.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: ColorDefine.black),
      title: Strings.appName,
      // routes: Routes.routes,
      home: const SplashScreen(),
    );
  }
}
