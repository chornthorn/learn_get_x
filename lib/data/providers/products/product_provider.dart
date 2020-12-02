import 'package:get/get.dart';
import 'package:imake_get_x/data/models/category/category_model_res.dart';
import 'package:imake_get_x/utils/path/path.dart';

class ProductProvider extends GetConnect {
  @override
  Future<CategoryModelRes> getProduct({int page}) async {
    var path = "$BASE_URL$CATEGORY";
    var response = await get('$path?page=$page');
    return CategoryModelRes.fromJson(response.body);
  }
}
