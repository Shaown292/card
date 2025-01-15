import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expanded_controller.dart';

class ExpandedView extends GetView<ExpandedController> {
  const ExpandedView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpandedView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: Get.width,
            height: 100,
            color: Colors.redAccent,
          ),
          Expanded(
            child: Container(
              width: Get.width,
              color: Colors.greenAccent,
            ),
          ),
          Container(
            width: Get.width,
            height: 100,
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
