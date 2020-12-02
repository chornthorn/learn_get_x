import 'package:imake_get_x/data/models/category/category_model_res.dart';
import 'package:imake_get_x/utils/network/http.dart';
import 'package:imake_get_x/utils/path/path.dart';

abstract class CategoryProvider {
  Future<CategoryModelRes> read({int page});
}

class CategoryProviderImpl implements CategoryProvider {
  final CustomHttp _customHttp = new CustomHttp();

  @override
  Future<CategoryModelRes> read({int page}) async {
    var path = "$BASE_URL$CATEGORY";
    final response = await _customHttp.get(path: "$path?page=$page");
    return CategoryModelRes.fromJson(response);
  }
}
