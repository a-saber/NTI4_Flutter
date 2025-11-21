import 'package:flutter/material.dart';
import 'package:nti4flutter/features/cart/data/models/product_model.dart';

class ProductItemBuilder extends StatelessWidget {
  const ProductItemBuilder({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow:
        [
          BoxShadow(
            offset: Offset.zero,
            color: Colors.grey.shade300,
            blurRadius: 8,
            spreadRadius: 6
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: SizedBox(
                height: 100,
                width: 100,
                child: Image.network(productModel.imagePath, fit: BoxFit.cover,)
            ),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Text(productModel.name),
                Text(productModel.price.toString()),
              ],
            ),
          )
        ]
      ),
    );
  }
}
