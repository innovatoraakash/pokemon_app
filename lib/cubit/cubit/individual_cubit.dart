import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokemon_app/models/individual_model.dart';
import 'package:pokemon_app/repository/pokeman_repo.dart';

part 'individual_state.dart';

class IndividualCubit extends Cubit<IndividualState> {
  IndividualCubit() : super(IndividualInitial());

  Future<void> getIndividualData(String id) async {
    try {
      emit(IndividualLoading());
      print("here i am");
      final pokemons = await ApiRepository().fetchIndividualData(id);
      print(pokemons.data.id);
      emit(IndividualLoaded(pokemons));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
