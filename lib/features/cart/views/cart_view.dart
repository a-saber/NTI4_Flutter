import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti4flutter/features/cart/cubit/cart_cubit/cart_state.dart';
import 'package:nti4flutter/features/cart/data/models/product_model.dart';
import 'package:nti4flutter/features/cart/data/models/product_order_model.dart';

import '../cubit/cart_cubit/cart_cubit.dart';
import 'widgets/product_item_builder.dart';
import 'widgets/product_order_item.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> CartCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
        ),
        body: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            return Column(
                  children:
                  [
                    SizedBox(
                      height: 170,
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index)=> InkWell(
                          onTap: (){
                             CartCubit.get(context).addToCart(model: CartCubit.get(context).products[index]);
                          },
                          child: ProductItemBuilder(
                            productModel: CartCubit.get(context).products[index],
                          ),
                        ),
                        separatorBuilder: (context, index)=> SizedBox(width: 10,),
                        itemCount:  CartCubit.get(context).products.length
                      ),
                    ),
                    SizedBox(height: 20,),
                    Expanded(child: ListView.separated(
                        itemBuilder: (context, index)=> ProductOrderItem(
                          productOrderModel:  CartCubit.get(context).cart[index],
                          onAdd: (){
                            CartCubit.get(context).addQtyToItem(index: index);
                          },
                          onRemove: (){
                            CartCubit.get(context).removeQtyFromItem(index: index);
                          },
                          ),
                        separatorBuilder:(context, index)=> SizedBox(height: 20,),
                        itemCount:  CartCubit.get(context).cart.length)
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ElevatedButton(onPressed: (){}, child: Text('Order Now')),
                    )
                  ],
                );
          }
        )
          ,
      ),
    );
  }
}
