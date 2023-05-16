import 'package:flutter/material.dart';
import 'package:hello_flutter/base_widget.dart';
import 'package:hello_flutter/state_manager_demo.dart';

import 'layout_demo.dart';
import 'listview_demo.dart';

void main() => runApp(APP());

class APP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    //   home:  Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Hello Flutter'),
    //     ),
    //     body: LayoutDemo(),
    //   ),
        home: StateManagerDemo()
    );

  }

}






