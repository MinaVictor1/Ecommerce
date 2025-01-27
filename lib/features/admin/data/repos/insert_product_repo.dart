import 'package:ecommerce/core/server/insert_product.dart';
import 'package:ecommerce/core/server/server_result.dart';
import 'package:ecommerce/features/admin/data/models/product_model.dart';

class AddProductRepo {
  final InsertProduct _insertProduct;
  AddProductRepo(this._insertProduct);

  Future<dynamic> addProduct(Product product) async {
    try {
      final response = await _insertProduct.insertProduct(product);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
