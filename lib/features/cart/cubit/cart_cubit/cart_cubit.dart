import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti4flutter/features/cart/cubit/cart_cubit/cart_state.dart';
import 'package:nti4flutter/features/cart/data/models/product_model.dart';
import 'package:nti4flutter/features/cart/data/models/product_order_model.dart';

class CartCubit extends Cubit<CartState>
{
  CartCubit(): super(CartInitialState());
  static CartCubit get(context) => BlocProvider.of(context);

  List<ProductModel> products = [
    ProductModel(name: 'Pr 01', price: 50, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 02', price: 60, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 03', price: 80, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 04', price: 100, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 05', price: 55, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 06', price: 30, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 07', price: 20, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 08', price: 100, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),
    ProductModel(name: 'Pr 09', price: 400, imagePath: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480_1_5x/img/recipe/ras/Assets/48a49653c8716457eb0b2f7eb3c7d74c/Derivates/8d83d9ed4567fa15456d8eec7557e60006a15576.jpg'),

  ];
  List<ProductOrderModel> cart = [  ];

  void addToCart({required ProductModel model})
  {
    cart.add(ProductOrderModel(productModel: model));
    emit(CartProductAddedState());
  }

  void addQtyToItem({required int index}){
      cart[index].quantity++;
      emit(CartQuantityChangedState());
  }
  void removeQtyFromItem({required int index}){
    cart[index].quantity--;
    emit(CartQuantityChangedState());
  }

}