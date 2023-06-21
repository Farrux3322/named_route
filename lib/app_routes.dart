import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:named_route/product_detail.dart';
import 'package:named_route/product_screen.dart';

import 'home_screen.dart';

class RouteNames{
  static const String initial = "/";
  static const String products = "/products";
  static const String productDetails = "/product_details";
}

class AppRoutes{
  static Route generateRoute(RouteSettings settings){

    switch(settings.name){
      case RouteNames.initial:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RouteNames.products:
        return MaterialPageRoute(builder: (context) => ProductScreen(
          data: settings.arguments as List<String>,
        ));
      case RouteNames.productDetails:
        return MaterialPageRoute(builder: (context) => ProductDetail());
      default :
        return MaterialPageRoute(builder: (context)=> const Scaffold(
          body: Center(child: Text("Route mavjud emas"),),
        ));
    }

  }
}