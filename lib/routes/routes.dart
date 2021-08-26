import 'package:flutter/material.dart';
import '../pages/login.dart';
import '../pages/search.dart';
import '../pages/form.dart';

final routes = {
  // '/': (context, {arguments}) => Tabs(),
  '/login': (context, {arguments}) => LoginPage(),
  '/form': (context, {arguments}) => FormPage(),
  '/search': (context, {arguments}) => SearchPage(),
};

// ignore: top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function pageContentBuilder = routes[name] as Function;
  // ignore: unnecessary_null_comparison
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
