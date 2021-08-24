import 'package:flutter/material.dart';

class IndexWidget extends StatefulWidget {
  IndexWidget({Key? key}) : super(key: key);

  @override
  _IndexWidgetState createState() => _IndexWidgetState();
}

class _IndexWidgetState extends State<IndexWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
          child: Text('跳转到搜索页面'),
        ),
      ],
    );
  }
}
