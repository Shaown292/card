import 'dart:convert';

import 'package:card/app/api_service.dart';
import 'package:get/get.dart';

class GetxOverviewController extends GetxController {
  var data = [].obs; // Observable list
  var isLoading = true.obs;
  var errorMessage = ''.obs;

  // Call the API and update state
  void fetchData() async {
    try {
      isLoading(true); // Start loading
      var response = await ApiService().fetchData();
      data.assignAll(response as Iterable); // Update the data
    } catch (e) {
      errorMessage.value = e.toString(); // Set error message
    } finally {
      isLoading(false); // Stop loading
    }
  }
}
