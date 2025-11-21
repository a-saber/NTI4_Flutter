import 'package:nti4flutter/features/cart/data/models/product_model.dart';

class ProductOrderModel
{
  int quantity;
  final ProductModel productModel;

  ProductOrderModel({this.quantity =1, required this.productModel});
}