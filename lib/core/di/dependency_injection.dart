import 'package:ecommerce/core/server/insert_product.dart';
import 'package:ecommerce/features/admin/data/repos/insert_product_repo.dart';
import 'package:ecommerce/features/admin/logic/cubit/add_product_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  getIt.registerLazySingleton<InsertProduct>(() => InsertProduct());

  getIt.registerLazySingleton<AddProductRepo>(
      () => AddProductRepo(getIt<InsertProduct>()));

  // Register Cubits
  getIt.registerFactory<AddProductCubit>(
      () => AddProductCubit(getIt<AddProductRepo>()));
}
