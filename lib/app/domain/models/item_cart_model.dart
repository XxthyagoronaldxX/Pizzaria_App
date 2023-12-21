import 'package:restaurantegulaapp/app/domain/models/product_model.dart';
import 'package:restaurantegulaapp/app/domain/models/user_model.dart';

class ItemCartModel {
  late String _id;
  final ProductModel productModel;
  final UserModel userModel;
  final double quantity;

  ItemCartModel({
    String id = "",
    required this.productModel,
    required this.userModel,
    required this.quantity,
  }) {
    _id = id;
  }
}
