import 'package:flutter_exam/main.dart';
import 'package:get/get.dart';

import '../../items_page/models/item_view_model.dart';

class CategoryViewModel {
   int id;
   String title;
  int totalPrice = 0;
  RxList<ItemViewModel> items = <ItemViewModel>[].obs;

  CategoryViewModel({
    required this.id,
    required this.title,
  });
}
