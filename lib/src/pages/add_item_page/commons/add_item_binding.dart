import 'package:flutter_exam/src/pages/add_item_page/controller/add_item_controller.dart';
import 'package:get/get.dart';

class AddItemBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> AddItemController());
  }

}
