import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ContainerDemo();
  }
}

// 富文本Demo
class RichTextDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(
          text: '《Flutter 高级进阶》',
          style: TextStyle(
            fontSize: 26.0,
            color: Colors.black54,
            fontWeight: FontWeight.w500
          ),
          children: <TextSpan>[
            TextSpan(text: '--', style: TextStyle(fontSize: 18.0, color: Colors.deepOrange)),
            TextSpan(text: 'Jack', style: TextStyle(fontSize: 26.0, color: Colors.amber)),
          ]
    ));
  }
}

// 弹性盒子
class ContainerDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Row(
        children: [
          Container(
            color: Colors.red,
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.all(20),
            height: 200,
            child: const Icon(
              Icons.add_a_photo
            ),
          ),
          Container(
            color: Colors.red,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            height: 200,
            child: const Icon(
                Icons.abc_sharp
            ),
          ),
        ],
      ),
    );
  }
}
