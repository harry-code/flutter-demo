import 'package:flutter/material.dart';
import 'pages/tabs.dart';
import 'routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      initialRoute: '/', // 初始化入口路由
      debugShowCheckedModeBanner: false, // 去除debug
      onGenerateRoute: onGenerateRoute,
    );
  }
}
