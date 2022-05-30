part of 'pokemon_cubit_cubit.dart';

@immutable
abstract class PokemonCubitState extends Equatable {
  const PokemonCubitState();
}

class PokemonInitial extends PokemonCubitState {
   @override
  List<Object> get props => [];
}

class PokemonLoaded extends PokemonCubitState {
  PokemonLoaded(this.pokemons);
  final Welcome pokemons;
  Welcome get getPokemons => pokemons;
  List<Object> get props => [pokemons];
}

class PokemonLoading extends PokemonCubitState {
   @override
  List<Object> get props => [];
}

class PokemonNotLoaded extends PokemonCubitState {
   @override
  List<Object> get props => [];
}

class ErrorState extends PokemonCubitState {
   @override
  List<Object> get props => [];
}
