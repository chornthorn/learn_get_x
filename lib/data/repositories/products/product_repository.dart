import 'package:imake_get_x/data/models/category/category_model_res.dart';
import 'package:imake_get_x/data/providers/products/product_provider.dart';

abstract class CategoryRepository {
  Future<CategoryModelRes> getProduct({int page});
}

class ProductRepositoryImpl implements CategoryRepository {
  final ProductProvider productProvider;

  ProductRepositoryImpl({this.productProvider})
      : assert(productProvider != null);

  @override
  Future<CategoryModelRes> getProduct({int page}) async {
    return await productProvider.getProduct(page: page);
  }
}
