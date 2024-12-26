import '../entities/entities.dart';
import 'macros.dart';

class Pizza {
  String pizzaId;
  String picture;
  bool isVeg;
  int spicy;
  String name;
  String description;
  double price;
  double discount;
  Macros macros;

  Pizza({
    required this.pizzaId,
    required this.picture,
    required this.isVeg,
    required this.spicy,
    required this.name,
    required this.description,
    required this.price,
    required this.discount,
    required this.macros,
  });

  static final empty = Pizza(
    pizzaId: '',
    picture: '',
    isVeg: false,
    spicy: 0,
    name: '',
    description: '',
    price: 0.0,
    discount: 0.0,
    macros: Macros.empty,
  );

  PizzaEntity toEntity() {
    return PizzaEntity(
      pizzaId: pizzaId,
      picture: picture,
      isVeg: isVeg,
      spicy: spicy,
      name: name,
      description: description,
      price: price,
      discount: discount,
      macros: macros,
    );
  }

  static Pizza fromEntity(PizzaEntity entity) {
    return Pizza(
      pizzaId: entity.pizzaId,
      picture: entity.picture,
      isVeg: entity.isVeg,
      spicy: entity.spicy,
      name: entity.name,
      description: entity.description,
      price: entity.price.toDouble(),
      discount: entity.discount.toDouble(),
      macros: entity.macros,
    );
  }

  @override
  String toString() {
    return 'Pizza{pizzaId: $pizzaId, picture: $picture, isVeg: $isVeg, spicy: $spicy, name: $name, description: $description, price: $price, discount: $discount, macros: $macros}';
  }
}
