import 'package:flutter/material.dart';
import '../../controller/category_controller.dart';
import '../../models/category_view_model.dart';
import 'package:get/get.dart';

class CategoryItem extends GetView<CategoryController> {
  const CategoryItem({super.key, required this.category});

  final CategoryViewModel category;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: ListTile(
          tileColor: Colors.blue.shade200,
          title: Text(category.title),
          subtitle: Row(
            children: [
              const Text(
                'total price',
              ),
              const SizedBox(
                width: 8,
              ),
              Text('${category.totalPrice}')
            ],
          ),
          trailing: IconButton(
            onPressed: () => controller.goToItemPage(
              categoryId: category.id,
            ),
            icon: const Icon(Icons.navigate_next_outlined),
          ),
        ),
      );
}
