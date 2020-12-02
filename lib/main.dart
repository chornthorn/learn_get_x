import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imake_get_x/routes/routes.dart';
import 'package:imake_get_x/utils/translations/app_language.dart';

import 'getx/bindings/splash_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      initialBinding: SplashBinding(),
      onGenerateRoute: generateRoute,
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      translations: AppLanguage(), // your translations
      locale: Get.deviceLocale ??
          Locale('en', 'US'), // translations will be displayed in that locale
      fallbackLocale: Locale('en', 'US'), //
    );
  }
}
