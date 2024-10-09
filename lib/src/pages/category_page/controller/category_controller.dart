import '../../../infrastructure/routes/route_names.dart';
import '../models/category_view_model.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  RxList<CategoryViewModel> categoryList = <CategoryViewModel>[].obs;
  int count = 1;

  Future<void> onAddNewCategory() async {
    var result = await Get.toNamed(RouteName.insertCategoryPage);
    CategoryViewModel newModel = CategoryViewModel(title: result, id: count);
    count++;
    categoryList.add(newModel);
  }

  void goToItemPage({required int categoryId}) {
    print('amin');
    int index = categoryList.indexWhere((e) => e.id == categoryId);
    if (index != -1) {
      onGoToItemPage(argument: categoryList[index]);
    }
  }

  // Future<void> onGoToItemPage({
  //   required CategoryViewModel argument,
  // }) async {
  //   var result = await Get.toNamed(
  //     RouteName.itemPage,
  //     arguments: argument,
  //   );
  // }

  void onGoToItemPage({
    required CategoryViewModel argument,
  }) {
    Get.toNamed(
      RouteName.itemPage,
      arguments: argument,
    );
  }
}
