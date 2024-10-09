import 'package:flutter/material.dart';
import '../controller/category_controller.dart';
import 'widgets/category_item.dart';
import 'package:get/get.dart';

class CategoryPage extends GetView<CategoryController> {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Category List'),
          backgroundColor: Colors.blue,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.onAddNewCategory,
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemBuilder: (context, index) =>
                      CategoryItem(category: controller.categoryList[index]),
                  itemCount: controller.categoryList.length,
                ),
              ),
            ),
          ],
        ),
      );
}
