import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokemon_app/models/main_model.dart';
import 'package:pokemon_app/repository/pokeman_repo.dart';
import 'package:equatable/equatable.dart';

part 'pokemon_cubit_state.dart';

class PokemonCubit extends Cubit<PokemonCubitState> {
  PokemonCubit() : super(PokemonInitial());

  void getPokemonList() async {
    try {
      emit(PokemonLoading());
      final pokemons = await ApiRepository().fetchMainData();
      await Future.delayed(const Duration(seconds: 1));
      emit(PokemonLoaded(pokemons));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
