import 'package:ecommerce/core/server/init_server.dart';
import 'package:ecommerce/core/server/server_constant.dart';
import 'package:ecommerce/features/admin/data/models/product_model.dart';

class InsertProduct {
  final _client = SupabaseService().client;

  Future<void> insertProduct(Product product) async {
    try {
      print("inserting product-------------------");
      final response = await _client.from(ServerConstant.productTable).insert({
        ...product.toMap(),
      });
      print("Done------------------------------");
      return response;
    } catch (e) {
      print(e);
      print("-------------------");
      throw Exception('Insertion failed: $e');
    }
  }
}
