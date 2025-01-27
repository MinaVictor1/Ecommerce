part of 'add_product_cubit.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState.initial() = _Initial;
  const factory AddProductState.loading() = Loading;

  const factory AddProductState.success() = Success;

  const factory AddProductState.failure({required String error}) = Faliure;
}
