import 'package:flutter/material.dart';

class PersonWidget extends StatefulWidget {
  PersonWidget({Key? key}) : super(key: key);

  @override
  _PersonWidgetState createState() => _PersonWidgetState();
}

class _PersonWidgetState extends State<PersonWidget> {
  @override
  Widget build(BuildContext context) {
    return Text('这是个人中心组件');
  }
}
