import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:imake_get_x/getx/bindings/category_binding.dart';
import 'package:imake_get_x/getx/bindings/home_binding.dart';
import 'package:imake_get_x/getx/bindings/product_binding.dart';
import 'package:imake_get_x/getx/bindings/splash_binding.dart';
import 'package:imake_get_x/getx/bindings/translate_binding.dart';
import 'package:imake_get_x/view/pages/categories/category_page.dart';
import 'package:imake_get_x/view/pages/homes/home_page.dart';
import 'package:imake_get_x/view/pages/translates/language_page.dart';
import 'package:imake_get_x/view/pages/products/product_page.dart';
import 'package:imake_get_x/view/pages/second_page.dart';
import 'package:imake_get_x/view/pages/splash/splash_page.dart';

Route generateRoute(RouteSettings settings) {
  final args = settings.arguments;
  switch (settings.name) {
    case '/':
      return GetPageRoute(
        routeName: '/',
        page: () => SplashPage(),
        binding: SplashBinding(),
        transition: Transition.downToUp,
      );
    case '/home':
      return GetPageRoute(
        routeName: '/home',
        page: () => HomePage(),
        binding: HomeBinding(),
      );
    case '/second':
      return GetPageRoute(
        routeName: '/second', // optional
        page: () => SecondPage(
          secondPageConstructor: args,
        ),
      );
    case '/category':
      return GetPageRoute(
        routeName: '/category', // optional
        page: () => CategoryPage(),
        binding: CategoryBinding(),
      );
    case '/language':
      return GetPageRoute(
        routeName: '/language', // optional
        page: () => LanguagePage(),
        binding: TranslateBinding(),
      );
    case '/product':
      return GetPageRoute(
        routeName: '/product', // optional
        page: () => ProductPage(),
        binding: ProductBinding(),
      );
  }
  return generateRoute(settings);
}
