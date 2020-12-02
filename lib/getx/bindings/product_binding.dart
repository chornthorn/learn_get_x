import 'package:get/get.dart';
import 'package:imake_get_x/data/providers/products/product_provider.dart';

import 'package:imake_get_x/data/repositories/products/product_repository.dart';
import 'package:imake_get_x/getx/controllers/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductController>(
      () => ProductController(
        productRepositoryImpl: ProductRepositoryImpl(
          productProvider: ProductProvider(),
        ),
      ),
    );
  }
}
