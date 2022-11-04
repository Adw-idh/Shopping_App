import 'package:equatable/equatable.dart';

import 'Shop.dart';

class ShopState extends Equatable {
  const ShopState();

  @override
  List<Object> get props => [];
}

class ShopInitial extends ShopState {}

class ShopPageLoadedState extends ShopState{
  ShopData shopData;
  ShopData cartData;
  ShopPageLoadedState(this.shopData,this.cartData);
}

class ItemAddingCartState extends ShopState{

  List<ShopItem> cartItems;
  ItemAddingCartState({required this.cartItems,});
}

class ItemAddedCartState extends ShopState{
  List<ShopItem> cartItems;
  ItemAddedCartState({required this.cartItems});
}

class ItemeDeletingCartState extends ShopState{
  List<ShopItem> cartItems;
  ItemeDeletingCartState({required this.cartItems});
}
