import 'package:flutter/material.dart';
import 'package:sushi_app/pages/food_details_page.dart';
import 'package:sushi_app/pages/intro_page.dart';
import 'package:sushi_app/pages/menu_page.dart';

class AppRoutes {
  static const String intro = "/intro";
  static const String menu = "/menu";
  static const String detail = "/detail";

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      intro: (context) => const IntroPage(),
      menu: (context) => const MenuPage(),
      detail: (context) => const FoodDetailsPage(),
    };
  }
}
