import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddItemController extends GetxController{
  TextEditingController insertEditingController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void onInsertButton() {
    if (formKey.currentState?.validate() ?? false) {
      String result = insertEditingController.text;
      back(result: result);
    }
  }

  String? validateText(String? value) {
    if (value == null || value.isEmpty) {
      return 'this field can not be empty ';
    } else {
      return null;
    }
  }

  void back({required String result}){
    Get.back(result: result);
  }
}