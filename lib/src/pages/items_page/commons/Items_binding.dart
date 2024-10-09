import 'package:flutter_exam/src/pages/category_page/models/category_view_model.dart';

import '../controller/items_controller.dart';
import 'package:get/get.dart';

class ItemsBinding extends Bindings{
  @override
  void dependencies() {
      CategoryViewModel category = Get.arguments;

  Get.lazyPut(() => ItemsController(category: category));
  }
}