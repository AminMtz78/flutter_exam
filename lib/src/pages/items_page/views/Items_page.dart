import 'package:flutter/material.dart';
import 'package:flutter_exam/src/pages/items_page/controller/items_controller.dart';
import 'package:flutter_exam/src/pages/items_page/views/widgets/show_item.dart';
import 'package:get/get.dart';

class ItemsPage extends GetView<ItemsController> {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('items page'),
          backgroundColor: Colors.blue,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.goToAddItemPage,
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            Expanded(
              child: Obx(
              () =>  ListView.builder(
                  itemBuilder: (context, index) => ShowItem(
                    item: controller.category.items[index],
                  ),
                  itemCount: controller.category.items.length,
                ),
              ),
            ),
          ],
        ),
      );
}
