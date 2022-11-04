
import 'Shop.dart';

class ShopDataProvider{
  Future<ShopData> getShopItems() async{
    List<ShopItem> _shopitems = [
      ShopItem(
          title: 'Product01',
          imageurl: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1399&q=80",
          price: 50.0 ,
          quantity: 1
      ),
      ShopItem(
          title: 'Product02',
          imageurl: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1399&q=80",
          price: 100.0 ,
          quantity: 1
      ),
      ShopItem(
          title: 'Product03',
          imageurl: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1399&q=80",
          price: 60.0 ,
          quantity: 1
      ),
      ShopItem(
          title: 'Product04',
          imageurl: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1399&q=80",
          price: 55.0 ,
          quantity: 1
      ),
    ];
    return ShopData(shopitems:_shopitems);
  }
  Future<ShopData> getCartItems() async{
    List<ShopItem> _shopitems = [
      ShopItem(
          title: 'Product01',
          imageurl: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1399&q=80",
          price: 50.0 ,
          quantity: 1
      ),
      ShopItem(
          title: 'Product02',
          imageurl: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1399&q=80",
          price: 100.0 ,
          quantity: 1
      ),
      ShopItem(
          title: 'Product03',
          imageurl: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1399&q=80",
          price: 60.0 ,
          quantity: 1
      ),
      ShopItem(
          title: 'Product04',
          imageurl: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1399&q=80",
          price: 55.0 ,
          quantity: 1
      ),
    ];
    return ShopData(shopitems:_shopitems);
  }
}