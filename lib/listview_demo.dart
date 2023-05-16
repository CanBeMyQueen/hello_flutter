import 'package:flutter/material.dart';

import 'model/car.dart';

class ListViewDemo extends StatelessWidget {

  Widget _itemForRow(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(datas[index].imageUrl!),
          const SizedBox(height: 10,),
          Text(
            datas[index].name!,
            style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: _itemForRow,
      itemCount: datas.length,
    );
  }
}
