import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/infrastructure/routes/route_pages.dart';
import 'src/infrastructure/routes/route_paths.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutePaths.categoryPage,
      getPages: RoutePages.pages,
    ),
  );
}
