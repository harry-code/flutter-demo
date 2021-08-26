import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/tabBarController.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      length: 2,
      vsync: this,
    );
    _tabController.addListener(() {
      // 自定义切换tab事件
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            child: Image.asset('assets/images/login_bg.png'),
            top: 0,
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                color: Colors.white,
              ),
              width: ScreenUtil().setWidth(750),
              // height: ScreenUtil().setHeight(1085),
              child: Column(
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(80),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(1005),
                    child: TabBarControllerPage(),
                  ),
                ],
              ),
            ),
            top: ScreenUtil().setHeight(250),
          ),
        ],
      ),
    );
  }
}
