import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/shop_bloc.dart';
import 'package:shopping_app/shop_state.dart';
import 'Shop.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late List<ShopItem> shopItems;
  late List<ShopItem> cartItems = [];
  bool loadingData = true;
  @override
  Widget build(BuildContext context) {
    return BlocListener<ShopBloc, ShopState>(
      listener: (context, state) {
        if (state is ShopInitial) {
          loadingData = true;
        }
        if (state is ShopPageLoadedState) {
          shopItems = state.shopData.shopitems;
          cartItems = state.cartData.shopitems;
          loadingData = false;
        }
        if (state is ItemAddedCartState) {
          cartItems = state.cartItems;
        }
        if (state is ItemeDeletingCartState) {
          cartItems = state.cartItems;
        }
      },
      child: BlocBuilder<ShopBloc, ShopState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('ShopApp'),
              centerTitle: true,
              elevation: 0,
            ),
            floatingActionButton: FloatingActionButton(onPressed: (){}),
            body: SingleChildScrollView(
                child: Column(children: [
                  GridView.builder(
                      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.6,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5
                      ),
                      shrinkWrap: true,
                      physics:  NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder:(context, index){
                        return Stack(children: [
                          Container(
                            width: 156,
                            height: 240,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(0,60),
                                      blurRadius: 60,
                                      color: Colors.blueAccent
                                  )
                                ],
                                borderRadius: BorderRadius.circular(60)
                            ),
                            child: Column(),
                          )
                        ],);
                      }
                  )
                ],)
            ),
          );
        },
      ),
    );
  }
}
