import 'package:card/app/modules/dynamic_list_view/widgets/items.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dynamic_list_view_controller.dart';

class DynamicListViewView extends GetView<DynamicListViewController> {
  const DynamicListViewView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> listOfColor = [
      Colors.redAccent,
      Colors.green,
      Colors.yellow,
      Colors.blue,
      Colors.purple,
      Colors.pinkAccent,
      Colors.redAccent,
      Colors.redAccent,
      Colors.green,
      Colors.yellow,
      Colors.blue,
      Colors.purple,
      Colors.pinkAccent,
      Colors.redAccent,
      Colors.redAccent,
      Colors.green,
      Colors.yellow,
      Colors.blue,
      Colors.purple,
      Colors.pinkAccent,
      Colors.redAccent,
      Colors.redAccent,
      Colors.green,
      Colors.yellow,
      Colors.blue,
      Colors.purple,
      Colors.pinkAccent,
      Colors.redAccent,
      Colors.redAccent,
      Colors.green,
      Colors.yellow,
      Colors.blue,
      Colors.purple,
      Colors.pinkAccent,
      Colors.redAccent,
      Colors.redAccent,
      Colors.green,
      Colors.yellow,
      Colors.blue,
      Colors.purple,
      Colors.pinkAccent,
      Colors.redAccent,
    ];
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          // const SizedBox(height: 30,),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 500,
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: listOfColor.length,
              itemBuilder: (BuildContext context, int index) {
                return Items(
                  color: listOfColor[index],
                  entry: "Entry A",
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 10,
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
