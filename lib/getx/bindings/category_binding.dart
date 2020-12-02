import 'package:get/get.dart';
import 'package:imake_get_x/data/providers/category/category_provider.dart';
import 'package:imake_get_x/data/repositories/category/category_repository.dart';
import 'package:imake_get_x/getx/controllers/category_controller.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryController>(
      () => CategoryController(
        categoryRepository: new CategoryRepositoryImpl(CategoryProviderImpl()),
      ),
    );
  }
}
