import 'package:flutter/material.dart';

class StateManagerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SmdState();
  }
}

class _SmdState extends State<StateManagerDemo> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('state demo'),
      ),
      body: Center(
        child: Chip(
            label: Text('$count',
              style: const TextStyle(
                  fontSize: 18
              ),)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, size: 25,),
        onPressed: (){
          setState(() {
            count += 1;
          });
          print('count = $count');
        },
      ),
    );
  }
}