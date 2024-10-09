import '../../pages/add_item_page/commons/add_item_binding.dart';
import '../../pages/add_item_page/views/add_item_page.dart';

import '../../pages/items_page/commons/Items_binding.dart';
import '../../pages/items_page/views/Items_page.dart';

import '../../pages/insert_category/commons/insert_category_binding.dart';
import '../../pages/insert_category/views/insert_category_page.dart';
import '../../pages/category_page/commons/category_binding.dart';
import 'route_paths.dart';
import '../../pages/category_page/views/category_page.dart';
import 'package:get/get.dart';

class RoutePages {
  static List<GetPage> pages = [
    GetPage(
      name: RoutePaths.categoryPage,
      page: () => const CategoryPage(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: RoutePaths.insertCategoryPage,
      page: () => const InsertCategoryPage(),
      binding: InsertCategoryBinding(),
    ),
    GetPage(
        name: RoutePaths.itemsPage,
        page: () => const ItemsPage(),
        binding: ItemsBinding()),
    GetPage(
        name: RoutePaths.addItemsPage,
        page: () => const AddItemPage(),
        binding: AddItemBinding())
  ];
}
