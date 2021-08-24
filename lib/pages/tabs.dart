import 'package:flutter/material.dart';
// import '../widgets/appBar.dart';
import '../widgets/index.dart';
import '../widgets/order.dart';
import '../widgets/person.dart';

class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _tabList = [
    IndexWidget(),
    OrderWidget(),
    PersonWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: _tabList[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          type: BottomNavigationBarType.fixed, // 自适应多个按钮
          iconSize: 30, //图标大小
          fixedColor: Colors.purpleAccent, // 选中的颜色
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: '首页',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: '订单',
              icon: Icon(Icons.countertops),
            ),
            BottomNavigationBarItem(
              label: '个人',
              icon: Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }
}
