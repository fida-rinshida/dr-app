import 'package:get/get.dart';

class WishlistController extends GetxController {
  // List of all available items
  final List<String> availableItems = ['Item 1', 'Item 2', 'Item 3'];

  // List of items in the wishlist
  var wishlist = <String>[].obs;

  // Method to add an item to the wishlist
  void addItem(String item) {
    if (!wishlist.contains(item) && wishlist.length < 3) {
      wishlist.add(item);
    }
  }

  // Method to remove an item from the wishlist
  void removeItem(String item) {
    wishlist.remove(item);
  }
}
