import 'package:flutter/material.dart';
import 'package:nti4flutter/features/cart/data/models/product_model.dart';
import 'package:nti4flutter/features/cart/data/models/product_order_model.dart';

import 'widgets/product_item_builder.dart';
import 'widgets/product_order_item.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {

  List<ProductModel> products = [
    ProductModel(name: 'Pr 01', price: 50, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 02', price: 100, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 03', price: 100, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 04', price: 100, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 05', price: 100, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 06', price: 100, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 07', price: 100, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 08', price: 100, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 09', price: 100, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),

  ];
  List<ProductOrderModel> cart = [  ];

  void addToCart({required ProductModel model})
  {
    setState(() {
      cart.add(ProductOrderModel(productModel: model));
    });
  }

  void addQtyToItem({required int index}){
    setState(() {
      cart[index].quantity++;
    });
  }
  void removeQtyFromItem({required int index}){
    setState(() {
      cart[index].quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children:
        [
          SizedBox(
            height: 150,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index)=> InkWell(
                onTap: (){
                  addToCart(model: products[index]);
                },
                child: ProductItemBuilder(
                  productModel: products[index],
                ),
              ),
              separatorBuilder: (context, index)=> SizedBox(width: 10,),
              itemCount: products.length
            ),
          ),
          SizedBox(height: 20,),
          Expanded(child: ListView.separated(
              itemBuilder: (context, index)=> ProductOrderItem(
                productOrderModel: cart[index],
                onAdd: (){
                  addQtyToItem(index: index);
                },
                onRemove: (){
                  removeQtyFromItem(index: index);
                },
                ),
              separatorBuilder:(context, index)=> SizedBox(height: 20,),
              itemCount: cart.length)
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(onPressed: (){}, child: Text('Order Now')),
          )
        ],
      ),
    );
  }
}
