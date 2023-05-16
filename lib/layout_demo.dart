import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      alignment: Alignment(0.0, 0.0),
      child: AspectRatioDemo(),
    );
  }
}

// 横向布局
class RowDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      // spaceBetween: 剩下的空间，平均分布到小部件之间；
      // spaceAround: 剩下的空间，平均分布到小部件周围；
      // spaceEvenly: 剩下的空间和小部件一起均分；
      // Expanded: 在主轴方向上不会剩余空隙，将被Expanded拉伸
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 主轴
      crossAxisAlignment: CrossAxisAlignment.start, // 交叉轴
      children: [
        Container(color: Colors.red, child: const Icon(Icons.add, size: 100,),),
        Container(color: Colors.cyan, child: const Icon(Icons.ice_skating, size: 80,),),
        Container(color: Colors.purple, child: const Icon(Icons.safety_check, size: 60,),),
      ],
    );
  }
}

// 纵向布局
class ColumnDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      // spaceBetween: 剩下的空间，平均分布到小部件之间；
      // spaceAround: 剩下的空间，平均分布到小部件周围；
      // spaceEvenly: 剩下的空间和小部件一起均分；
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(color: Colors.red, child: Icon(Icons.add, size: 100,),),
        Container(color: Colors.cyan, child: Icon(Icons.ice_skating, size: 80,),),
        Container(color: Colors.purple, child: Icon(Icons.safety_check, size: 60,),),
      ],
    );
  }
}

// 层级布局
class StackDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      // spaceBetween: 剩下的空间，平均分布到小部件之间；
      // spaceAround: 剩下的空间，平均分布到小部件周围；
      // spaceEvenly: 剩下的空间和小部件一起均分；
      children: [
        Positioned(child: Container(color: Colors.red, child: Icon(Icons.add, size: 200,)),),
        Positioned(child:
        Container(color: Colors.cyan, child: Icon(Icons.ice_skating, size: 100),),
          right: 0,
        ),
        Positioned(child: Container(color: Colors.purple, child: Icon(Icons.safety_check, size: 50,),)),
      ],
    );
  }
}

// 比例显示: 只有宽或者高设置其中一个时有效，都有值时比例设置无效
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      alignment: const Alignment(0,0),
      child: Container(
        color: Colors.red,
        width: 120,
        child: const AspectRatio(
          aspectRatio: 1/1,
        ),
      ),
    );
  }
}
