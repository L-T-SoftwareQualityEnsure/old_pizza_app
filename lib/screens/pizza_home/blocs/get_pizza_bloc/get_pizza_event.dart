part of 'get_pizza_bloc.dart';

sealed class GetPizzaEvent extends Equatable {
  const GetPizzaEvent();

  @override
  List<Object> get props => [];
}

class GetPizza extends GetPizzaEvent {
  // final String pizzaId;

  // GetPizza(this.pizzaId);

  // @override
  // List<Object> get props => [pizzaId];
}
