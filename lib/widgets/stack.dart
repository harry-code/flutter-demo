import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  StackWidget({Key? key}) : super(key: key);

  @override
  _StackWidgetState createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 500,
        color: Colors.red,
        child: Stack(
          children: [
            Positioned(
              child: Text('文本1'),
              left: 50,
            ),
            Positioned(
              child: Text('文本2'),
              top: 200,
            ),
            Positioned(
              child: Text('文本3'),
              bottom: 20,
              right: 20,
            )
          ],
        ),
      ),
    );
  }
}
