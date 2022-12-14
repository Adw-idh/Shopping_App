part of 'shop_bloc.dart';

class ShopEvent extends Equatable {
  const ShopEvent();

  @override
  List<Object> get props => [];
}
class ShopPageinitialEvent extends ShopEvent{

}

class ItemAddingCartEvent extends ShopEvent{
  List<ShopItem>cartItems;
  ItemAddingCartEvent(this.cartItems);
}

class ItemAddedCartEvent extends ShopEvent{
  List<ShopItem>cartItems;
  ItemAddedCartEvent(this.cartItems);
}

class ItemDeleteCartEvent extends ShopEvent{
  List<ShopItem>cartItems;
  int index;
  ItemDeleteCartEvent(this.cartItems,this.index);
}
