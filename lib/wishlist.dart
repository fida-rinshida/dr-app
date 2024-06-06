import 'package:drapp/wishlistcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class WishlistPage extends StatelessWidget {
  final WishlistController wishlistController = Get.put(WishlistController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Wishlist Page ',style: TextStyle(color: Colors.amber,fontSize: 26),)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Text('Available Items', style: TextStyle(fontSize: 20)),
                Expanded(
                  child: ListView.builder(
                    itemCount: wishlistController.availableItems.length,
                    itemBuilder: (context, index) {
                      final item = wishlistController.availableItems[index];
                      return ListTile(
                        title: Text(item,style: TextStyle(fontSize: 18),),
                        trailing: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            wishlistController.addItem(item);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text('Wishlist', style: TextStyle(fontSize: 20)),
                Expanded(
                  child: Obx(() {
                    return ListView.builder(
                      itemCount: wishlistController.wishlist.length,
                      itemBuilder: (context, index) {
                        final item = wishlistController.wishlist[index];
                        return ListTile(
                          title: Text(item),
                          trailing: IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              wishlistController.removeItem(item);
                            },
                          ),
                        );
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
