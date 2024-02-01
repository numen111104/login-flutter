import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(
          color: Colors.blue,
        )),
        Expanded(child: Container(
          color: Colors.red,
        )),
        Expanded(
          flex: 3,
            child: Container(
          color: Colors.yellow,
        )),
        Expanded(
          flex: 3,
            child: Container(
          color: Colors.greenAccent,
        )),
        Expanded(child: Container(
          color: Colors.redAccent,
        )),
      ],
    );
  }
}
