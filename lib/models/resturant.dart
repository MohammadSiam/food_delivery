import 'package:flutter/cupertino.dart';
import 'package:food_delivery/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // ---------------- BURGERS ----------------
    Food(
      name: "Classic Cheeseburger",
      description: "Juicy beef patty with cheddar cheese, lettuce, and tomato.",
      imagePath: "https://images.unsplash.com/photo-1550547660-d9450f859349",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 1.50),
        Addon(name: "Bacon", price: 2.00),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description: "Beef patty with BBQ sauce, crispy bacon, and cheddar.",
      imagePath: "https://images.unsplash.com/photo-1551782450-a2132b4ba21d",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Onion Rings", price: 1.80),
        Addon(name: "Extra BBQ Sauce", price: 0.70),
      ],
    ),
    Food(
      name: "Double Patty Burger",
      description: "Two juicy patties stacked with cheese and pickles.",
      imagePath: "https://images.unsplash.com/photo-1550547660-d9450f859349",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Fried Egg", price: 1.50),
        Addon(name: "Jalapenos", price: 0.90),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "Plant-based patty with fresh vegetables and vegan mayo.",
      imagePath: "https://images.unsplash.com/photo-1550547660-d9450f859349",
      price: 7.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 1.20),
        Addon(name: "Grilled Mushrooms", price: 1.00),
      ],
    ),
    Food(
      name: "Spicy Chicken Burger",
      description: "Crispy fried chicken with spicy mayo and lettuce.",
      imagePath: "https://images.unsplash.com/photo-1550547660-d9450f859349",
      price: 8.50,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Spicy Sauce", price: 0.80),
        Addon(name: "Cheddar Slice", price: 1.00),
      ],
    ),

    // ---------------- SALADS ----------------
    Food(
      name: "Grilled Chicken Salad",
      description:
          "Fresh greens with grilled chicken, cherry tomatoes, and vinaigrette.",
      imagePath: "https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7",
      price: 7.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 1.20),
        Addon(name: "Extra Chicken", price: 2.50),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Romaine lettuce with Caesar dressing, parmesan, and croutons.",
      imagePath: "https://images.unsplash.com/photo-1504754524776-8f4f37790ca0",
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.00),
        Addon(name: "Boiled Egg", price: 1.00),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Cucumber, tomato, olives, and feta with olive oil dressing.",
      imagePath: "https://images.unsplash.com/photo-1600891964599-f61ba0e24092",
      price: 6.50,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Feta", price: 1.00),
        Addon(name: "Olives", price: 0.80),
      ],
    ),
    Food(
      name: "Avocado Salad",
      description: "Mixed greens with ripe avocado and lemon dressing.",
      imagePath: "https://images.unsplash.com/photo-1555939594-58d7cb561ad1",
      price: 7.20,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Sunflower Seeds", price: 0.70),
        Addon(name: "Grilled Chicken", price: 2.00),
      ],
    ),
    Food(
      name: "Tuna Salad",
      description: "Tuna chunks with lettuce, sweetcorn, and light mayo.",
      imagePath: "https://images.unsplash.com/photo-1546069901-ba9599a7e63c",
      price: 7.80,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Boiled Egg", price: 1.00),
        Addon(name: "Extra Tuna", price: 2.50),
      ],
    ),

    // ---------------- SIDES ----------------
    Food(
      name: "French Fries",
      description: "Golden crispy fries with a pinch of sea salt.",
      imagePath: "https://images.unsplash.com/photo-1604152135912-04a022e23696",
      price: 3.50,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 1.00),
        Addon(name: "Chili", price: 1.50),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy golden onion rings with dipping sauce.",
      imagePath: "https://images.unsplash.com/photo-1604152135912-04a022e23696",
      price: 4.20,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Dip", price: 1.20),
        Addon(name: "Spicy Mayo", price: 0.80),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description: "Toasted bread with garlic butter and herbs.",
      imagePath: "https://images.unsplash.com/photo-1604152135912-04a022e23696",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese", price: 1.00),
        Addon(name: "Extra Garlic Butter", price: 0.70),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Fried mozzarella cheese served with marinara sauce.",
      imagePath: "https://images.unsplash.com/photo-1604152135912-04a022e23696",
      price: 4.80,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Marinara", price: 0.50),
        Addon(name: "Ranch Dip", price: 0.80),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a dash of cinnamon.",
      imagePath: "https://images.unsplash.com/photo-1604152135912-04a022e23696",
      price: 4.50,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Maple Syrup", price: 0.60),
        Addon(name: "Parmesan", price: 0.80),
      ],
    ),

    // ---------------- DESSERTS ----------------
    Food(
      name: "Chocolate Lava Cake",
      description: "Rich chocolate cake with a gooey molten center.",
      imagePath: "https://images.unsplash.com/photo-1600891964599-f61ba0e24092",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 1.50),
        Addon(name: "Caramel Drizzle", price: 1.00),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description: "Vanilla ice cream topped with chocolate sauce and nuts.",
      imagePath: "https://images.unsplash.com/photo-1600891964599-f61ba0e24092",
      price: 5.20,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Nuts", price: 0.80),
        Addon(name: "Cherries", price: 0.50),
      ],
    ),
    Food(
      name: "Cheesecake",
      description: "Creamy cheesecake with a graham cracker crust.",
      imagePath: "https://images.unsplash.com/photo-1600891964599-f61ba0e24092",
      price: 5.80,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Sauce", price: 0.70),
        Addon(name: "Whipped Cream", price: 0.60),
      ],
    ),
    Food(
      name: "Brownie",
      description: "Fudgy chocolate brownie with walnuts.",
      imagePath: "https://images.unsplash.com/photo-1600891964599-f61ba0e24092",
      price: 4.90,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Chocolate Sauce", price: 0.70),
        Addon(name: "Ice Cream", price: 1.50),
      ],
    ),
    Food(
      name: "Fruit Tart",
      description: "Crisp pastry filled with custard and fresh fruits.",
      imagePath: "https://images.unsplash.com/photo-1600891964599-f61ba0e24092",
      price: 6.20,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Berries", price: 1.20),
        Addon(name: "Whipped Cream", price: 0.80),
      ],
    ),

    // ---------------- DRINKS ----------------
    Food(
      name: "Strawberry Milkshake",
      description: "Creamy milkshake with fresh strawberries.",
      imagePath: "https://images.unsplash.com/photo-1588196749597-9ff075ee6b5b",
      price: 4.50,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.75),
        Addon(name: "Extra Strawberry Syrup", price: 0.50),
      ],
    ),
    Food(
      name: "Iced Coffee",
      description: "Refreshing cold coffee served over ice.",
      imagePath: "https://images.unsplash.com/photo-1511920170033-f8396924c348",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Caramel Syrup", price: 0.60),
        Addon(name: "Extra Espresso Shot", price: 1.00),
      ],
    ),
    Food(
      name: "Lemonade",
      description: "Freshly squeezed lemonade with mint.",
      imagePath: "https://images.unsplash.com/photo-1588196749597-9ff075ee6b5b",
      price: 3.50,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Lemon", price: 0.30),
        Addon(name: "Mint Leaves", price: 0.50),
      ],
    ),
    Food(
      name: "Mango Smoothie",
      description: "Blended mango with yogurt and honey.",
      imagePath: "https://images.unsplash.com/photo-1588196749597-9ff075ee6b5b",
      price: 4.80,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Mango", price: 1.00),
        Addon(name: "Chia Seeds", price: 0.70),
      ],
    ),
    Food(
      name: "Hot Chocolate",
      description: "Warm chocolate drink topped with marshmallows.",
      imagePath: "https://images.unsplash.com/photo-1588196749597-9ff075ee6b5b",
      price: 3.70,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.50),
        Addon(name: "Cinnamon", price: 0.40),
      ],
    ),
  ];

  List<Food> get menu => _menu;
}
