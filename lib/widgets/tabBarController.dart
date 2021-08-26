import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key? key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
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
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          indicatorColor: Color(0xff1591FF),
          controller: this._tabController,
          labelColor: Color(0xff1591FF),
          unselectedLabelColor: Color(0xff333333),
          tabs: [
            Tab(text: '帐号密码登录'),
            Tab(text: '手机验证登录'),
          ],
        ),
        backgroundColor: Color(0xffffffff),
        automaticallyImplyLeading: false,
      ),
      body: TabBarView(
        controller: this._tabController,
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: ScreenUtil().setHeight(72),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().screenWidth / 2 - 150,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              size: 20,
                            ),
                            prefixIconConstraints: BoxConstraints(),
                            filled: true,
                            hintText: '帐号',
                            hintStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().screenWidth / 2 - 150,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.password,
                              size: 20,
                            ),
                            prefixIconConstraints: BoxConstraints(),
                            filled: true,
                            hintText: '帐号',
                            hintStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().screenWidth / 2 - 150,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.password,
                              size: 20,
                            ),
                            prefixIconConstraints: BoxConstraints(),
                            filled: true,
                            hintText: '帐号',
                            hintStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/images/login_bg.png',
                          width: ScreenUtil().setWidth(170),
                          height: ScreenUtil().setHeight(66),
                        ),
                      ),
                      Expanded(
                        child: Text.rich(TextSpan(
                            text: '换一张',
                            style: TextStyle(fontSize: 25, color: Colors.red),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('hello world');
                              })),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(114),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: ScreenUtil().setWidth(600),
                    child: Center(
                      child: Text('登录'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text('推荐'),
          ),
        ],
      ),
    );
  }
}
