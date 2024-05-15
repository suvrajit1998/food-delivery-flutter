import 'package:food_delivery_app/models/food.dart';

class CartItem {
  final Food food;
  final List<Addon> selectedAddon;
  int quantity;

  CartItem({
    required this.food,
    this.quantity = 1,
    required this.selectedAddon,
  });

  double get totalPrice {
    double addonsPrice =
        selectedAddon.fold(0, (sum, addon) => sum + addon.price);

    return (food.price + addonsPrice) * quantity;
  }
}
