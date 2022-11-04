
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shopping_app/shop_state.dart';
import 'Shop.dart';
import 'ShopDataRepo.dart';
part 'shop_event.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopDataProvider shopDataProvider = ShopDataProvider();
  ShopBloc() : super(ShopInitial()) {

    on<ShopPageinitialEvent>((event, emit) async*{
       ShopData shopData = await shopDataProvider.getShopItems();
       ShopData cartData = await shopDataProvider.getCartItems();
       emit(ShopPageLoadedState(shopData, cartData));
     });
     on<ItemAddingCartEvent>((event, emit) {
       emit(ItemAddingCartState(cartItems: event.cartItems));
     });
     on<ItemAddedCartEvent>((event, emit){
       emit(ItemAddedCartState(cartItems: event.cartItems));
     });
     on<ItemDeleteCartEvent>((event, emit) {
       emit(ItemeDeletingCartState(cartItems: event.cartItems));
     });


 // @override
 // Stream<ShopState>mapEventToState(
 //   ShopEvent event,
 // )async*{
 //
 //   if(event is ShopPageinitialEvent){
 //    ShopData shopData = await shopDataProvider.getShopItems();
 //    ShopData cartData = await shopDataProvider.getCartItems();
 //     yield(ShopPageLoadedState(shopData, cartData));
 //  }
 //   if(event is ItemAddingCartEvent){
 //    yield(ItemAddingCartState(cartItems: event.cartItems));
 //  }
 //   if(event is ItemAddedCartEvent){
 //    yield(ItemAddedCartState(cartItems: event.cartItems));
 //   }
 //   if(event is ItemDeleteCartEvent){
 //    yield(ItemeDeletingCartState(cartItems: event.cartItems));
 //  }
 // }
  }
}
