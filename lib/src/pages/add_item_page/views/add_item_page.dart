import 'package:flutter/material.dart';
import 'package:flutter_exam/src/pages/add_item_page/controller/add_item_controller.dart';
import 'package:get/get.dart';

class AddItemPage extends GetView<AddItemController> {
  const AddItemPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('insert category'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Form(
                key: controller.formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    validator: controller.validateText,
                    controller: controller.insertEditingController,
                    decoration: const InputDecoration(
                      labelText: 'Title',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: controller.onInsertButton,
              child: const Text('insert new category'),
            ),
          ],
        ),
      );
}
