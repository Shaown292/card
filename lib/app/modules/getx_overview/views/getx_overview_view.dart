import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/getx_overview_controller.dart';

class GetxOverviewView extends GetView<GetxOverviewController> {
  const GetxOverviewView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: const Text('GetX API Example')),
    body: Obx(() {
      // Show loading indicator while fetching data
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      // Show error message if failed
      if (controller.errorMessage.isNotEmpty) {
        return Center(child: Text(controller.errorMessage.value));
      }

      // Display data
      return ListView.builder(
        itemCount: controller.data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(controller.data[index]['title']),
            subtitle: Text(controller.data[index]['body']),
          );
        },
      );
    }),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        controller.fetchData(); // Fetch data when pressed
      },
      child: const Icon(Icons.refresh),
    ),
    );;
  }
}
