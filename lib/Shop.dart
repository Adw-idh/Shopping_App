

class ShopData {
  List<ShopItem> shopitems;
  ShopData({required this.shopitems});
}

class ShopItem {
  String title;
  String imageurl;
  double price;
  int quantity;

  ShopItem({required this.title, required this.imageurl, required this.price,required this.quantity});
}

