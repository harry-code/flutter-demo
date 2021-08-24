import 'package:flutter/material.dart';

class OrderWidget extends StatefulWidget {
  OrderWidget({Key? key}) : super(key: key);

  @override
  _OrderWidgetState createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/form');
          },
          child: Text('跳转到表单页面'),
        ),
      ],
    );
  }
}
