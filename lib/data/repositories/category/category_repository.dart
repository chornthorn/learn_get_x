import 'package:imake_get_x/data/models/category/category_model_res.dart';
import 'package:imake_get_x/data/providers/category/category_provider.dart';

abstract class CategoryRepository {
  Future<CategoryModelRes> read({int page});
}

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryProviderImpl categoryProviderImpl;

  CategoryRepositoryImpl(this.categoryProviderImpl);

  @override
  Future<CategoryModelRes> read({int page}) async {
    return await categoryProviderImpl.read(page: page);
  }
}
