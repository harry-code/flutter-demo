import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'pages/tabs.dart';
import 'routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(750, 1334),
      builder: () => MaterialApp(
        home: Tabs(),
        initialRoute: '/login', // 初始化入口路由
        debugShowCheckedModeBanner: false, // 去除debug
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}
