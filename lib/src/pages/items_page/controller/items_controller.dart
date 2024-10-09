import 'package:flutter_exam/src/infrastructure/routes/route_names.dart';
import 'package:get/get.dart';
import '../../category_page/models/category_view_model.dart';
import '../models/item_view_model.dart';

class ItemsController extends GetxController {
  ItemsController({required this.category});

  CategoryViewModel category;
  int totalPrice = 0;
  int idCounter = 2;

  void calculateTotalPrice() {
    for (ItemViewModel item in category.items) {
      totalPrice = totalPrice + item.price;
    }
  }

  Future<void> goToAddItemPage() async {
    String result = await Get.toNamed(RouteName.addItemPage);
    ItemViewModel newItem = ItemViewModel(
      id: idCounter,
      name: result,
      price: 100,
    );
    category.items.add(newItem);
    idCounter++;
  }

  void goToEditItemPage() {}
}
