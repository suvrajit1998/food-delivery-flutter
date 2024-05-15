import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy patty with melted cheddar, lettuce, tomato and hint of onion and pickle',
      imagePath: 'assets/burgers/burger1.jpg',
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'BBQ Bacon Burger',
      description: 'Smoky BBQ sauce',
      imagePath: 'assets/burgers/burger2.jpg',
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Veggie Burger',
      description:
          'A juicy patty with melted cheddar, lettuce, tomato and hint of onion and pickle',
      imagePath: 'assets/burgers/burger3.jpg',
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Blue Moon Burger',
      description:
          'A juicy patty with melted cheddar, lettuce, tomato and hint of onion and pickle',
      imagePath: 'assets/burgers/burger4.jpg',
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Aloha Burger',
      description:
          'A juicy patty with melted cheddar, lettuce, tomato and hint of onion and pickle',
      imagePath: 'assets/burgers/burger5.jpg',
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    //Salads
    Food(
      name: 'Caesar Salad',
      description:
          'Crisp romaine lettuce, parmesan cheese, croutons and caesar dressing.',
      imagePath: 'assets/salads/salad1.jpg',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.49),
        Addon(name: 'Extra parmesan', price: 1.99),
      ],
    ),
    Food(
      name: 'Greek Salad',
      description:
          'Crisp romaine lettuce, parmesan cheese, croutons and caesar dressing.',
      imagePath: 'assets/salads/salad2.jpg',
      price: 10.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.49),
        Addon(name: 'Extra parmesan', price: 1.99),
      ],
    ),
    Food(
      name: 'Quinoa Salad',
      description:
          'Crisp romaine lettuce, parmesan cheese, croutons and caesar dressing.',
      imagePath: 'assets/salads/salad3.jpg',
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.49),
        Addon(name: 'Extra parmesan', price: 1.99),
      ],
    ),
    Food(
      name: 'South West Chicken Salad',
      description:
          'Crisp romaine lettuce, parmesan cheese, croutons and caesar dressing.',
      imagePath: 'assets/salads/salad4.jpg',
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.49),
        Addon(name: 'Extra parmesan', price: 1.99),
      ],
    ),

    //Sides
    Food(
      name: 'Sweet Potato Fries',
      description: 'Crispy sweet potato fries with a touch of salt.',
      imagePath: 'assets/sides/sides.png',
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.49),
        Addon(name: 'Cajun Spice', price: 1.99),
      ],
    ),
    Food(
      name: 'Onion Rings',
      description: 'Crispy sweet potato fries with a touch of salt.',
      imagePath: 'assets/sides/sides2.jpg',
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.49),
        Addon(name: 'Cajun Spice', price: 1.99),
      ],
    ),
    //Desserts
    Food(
      name: 'Cheesecake',
      description:
          'Creamy cheesecake on a graham cracker crust, with a berry compote',
      imagePath: 'assets/desserts/desserts1.jpg',
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Strawberry Topping', price: 0.99),
        Addon(name: 'Blueberry Compote', price: 1.49),
        Addon(name: 'Chocolate Chips', price: 1.99),
      ],
    ),
    Food(
      name: 'Apple Pie',
      description:
          'Creamy cheesecake on a graham cracker crust, with a berry compote',
      imagePath: 'assets/desserts/desserts2.jpg',
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Strawberry Topping', price: 0.99),
        Addon(name: 'Blueberry Compote', price: 1.49),
        Addon(name: 'Chocolate Chips', price: 1.99),
      ],
    ),
    Food(
      name: 'Red Velvet Lava Cake',
      description:
          'Creamy cheesecake on a graham cracker crust, with a berry compote',
      imagePath: 'assets/desserts/desserts3.jpg',
      price: 19.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Strawberry Topping', price: 0.99),
        Addon(name: 'Blueberry Compote', price: 1.49),
        Addon(name: 'Chocolate Chips', price: 1.99),
      ],
    ),

    //Drinks
    Food(
      name: 'Cold Coffee',
      description: 'Childe ice tea with a hint of lemon, served over ice',
      imagePath: 'assets/drinks/Cold Coffee.png',
      price: 9.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Peach flavor', price: 0.99),
        Addon(name: 'Lemon Slices', price: 1.49),
        Addon(name: 'Honey', price: 1.99),
      ],
    ),
    Food(
      name: 'Black Coffee',
      description: 'Childe ice tea with a hint of lemon, served over ice',
      imagePath: 'assets/drinks/Black Coffee.png',
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Peach flavor', price: 0.99),
        Addon(name: 'Lemon Slices', price: 1.49),
        Addon(name: 'Honey', price: 1.99),
      ],
    ),
    Food(
      name: 'Espresso',
      description: 'Childe ice tea with a hint of lemon, served over ice',
      imagePath: 'assets/drinks/Espresso.png',
      price: 8.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Peach flavor', price: 0.99),
        Addon(name: 'Lemon Slices', price: 1.49),
        Addon(name: 'Honey', price: 1.99),
      ],
    ),
    Food(
      name: 'Latte',
      description: 'Childe ice tea with a hint of lemon, served over ice',
      imagePath: 'assets/drinks/Latte.png',
      price: 5.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Peach flavor', price: 0.99),
        Addon(name: 'Lemon Slices', price: 1.49),
        Addon(name: 'Honey', price: 1.99),
      ],
    ),
  ];

  List<Food> get menu => _menu;

  final List<CartItem> _cart = [];

  List<CartItem> get cart => _cart;

  void addToCart(Food food, List<Addon> selectedAddon) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddon =
          const ListEquality().equals(item.selectedAddon, selectedAddon);

      return isSameAddon && isSameFood;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddon: selectedAddon));
    }

    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddon) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formatedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formatedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for(final cartItem in _cart){
      receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");

    if(cartItem.selectedAddon.isNotEmpty){
      receipt.writeln(" Add-ons: ${_formatAddon(cartItem.selectedAddon)}");
    }
    receipt.writeln();
    }
    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }


  String _formatPrice(double price) {
    return '\$${price.toStringAsFixed(2)}';
  }

  String _formatAddon(List<Addon> addons) {
    return addons.map((addon) => '${addon.name} (${_formatPrice(addon.price)})').join(', ');
  }
}
