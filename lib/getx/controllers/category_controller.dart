import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imake_get_x/data/models/category/category_model_res.dart';
import 'package:imake_get_x/data/repositories/category/category_repository.dart';

class CategoryController extends GetxController {
  final CategoryRepository categoryRepository;

  CategoryController({@required this.categoryRepository})
      : assert(categoryRepository != null,
            "The Category repository should be initialise ");

  RxList<CategoryModelResData> _data = <CategoryModelResData>[].obs;

  List<CategoryModelResData> get data => this._data.value;

  RxBool _isLoading = false.obs;

  bool get isLoading => this._isLoading.value;

  Future<List<CategoryModelResData>> fetchData() async {
    try {
      this._isLoading.value = true;
      final res = await categoryRepository.read(page: 0);

      _data.value = res.data;

      this._isLoading.value = false;
    } catch (e) {
      String message = "$e";
      Get.dialog(
        AlertDialog(
          title: Text("Error"),
          content: Text(message),
          actions: [
            FlatButton(
              child: Text("OK"),
              onPressed: () => Get.back(),
            )
          ],
        ),
      );
    }
  }

  @override
  void onInit() {
    this.fetchData();
    super.onInit();
  }
}
