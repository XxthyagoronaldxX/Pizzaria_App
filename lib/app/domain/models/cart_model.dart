import 'package:restaurantegulaapp/app/domain/models/item_cart_model.dart';

class CartModel {
  late String _id;
  final List<ItemCartModel> itemCartModelList;
  final DateTime createdAt;
  final DateTime updatedAt;

  CartModel({
    String id = "",
    required this.itemCartModelList,
    required this.createdAt,
    required this.updatedAt,
  }) {
    _id = id;
  }
}
