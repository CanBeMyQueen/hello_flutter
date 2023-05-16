import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
      child: Text(
        'hello flutter element',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w400,
            color: Colors.red
        ),
      ),
    );
  }

}