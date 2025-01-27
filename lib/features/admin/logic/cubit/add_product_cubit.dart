import 'package:bloc/bloc.dart';
import 'package:ecommerce/features/admin/data/models/product_model.dart';
import 'package:ecommerce/features/admin/data/repos/insert_product_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product_state.dart';
part 'add_product_cubit.freezed.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit(this._addProductRepo)
      : super(const AddProductState.initial());
  final AddProductRepo _addProductRepo;
  TextEditingController idCategoryController = TextEditingController();
  TextEditingController nameCategoryController = TextEditingController();
  TextEditingController descriptionCategoryController = TextEditingController();
  TextEditingController priceCategoryController = TextEditingController();
  TextEditingController stockCategoryController = TextEditingController();
  TextEditingController categoryCategoryController = TextEditingController();
  TextEditingController imageUrlCategoryController = TextEditingController();
  TextEditingController ratingCategoryController = TextEditingController();
  TextEditingController createdAtCategoryController = TextEditingController();
  TextEditingController updatedAtCategoryController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> addProduct() async {
    emit(const AddProductState.loading());
    Product product = Product(
      id: idCategoryController.text,
      name: nameCategoryController.text,
      description: descriptionCategoryController.text,
      price: priceCategoryController.text,
      stock: true,
      category: "category",
      imageUrl: "imageUrlCategoryController.text",
      rating: "10",
      createdAt: DateTime.now().toString(),
      updatedAt: DateTime.now().toString(),
    );

    final response = await _addProductRepo.addProduct(product);
    response.when(
      success: (response) {
        print(response);
        emit(const AddProductState.success());
      },
      failure: (error) {
        emit(AddProductState.failure(error: error));
      },
    );
  }
}
