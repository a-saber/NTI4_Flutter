import 'package:flutter/material.dart';
import 'package:nti4flutter/features/cart/data/models/product_order_model.dart';

class ProductOrderItem extends StatelessWidget {
  const ProductOrderItem({super.key, required this.productOrderModel, required this.onAdd, required this.onRemove});
  final ProductOrderModel productOrderModel;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children:
        [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productOrderModel.productModel.name),
                Text(productOrderModel.productModel.price.toString()),
              ],
            ),
          ),
          IconButton(onPressed: onAdd, icon: Icon(Icons.add)),
          Text(productOrderModel.quantity.toString()),
          IconButton(onPressed: onRemove, icon: Icon(Icons.exposure_minus_1_rounded)),




        ],
      ),
    );
  }
}
