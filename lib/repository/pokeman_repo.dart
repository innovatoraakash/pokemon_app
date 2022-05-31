import 'package:pokemon_app/models/main_model.dart';
import '../../models/Individual/Individual.dart';
import 'package:pokemon_app/repository/individual_provider.dart';
import 'package:pokemon_app/repository/main_provider.dart';

class ApiRepository {
  final _mainProvider = MainProvider();
  final _individualProvider = IndividualProvider();

  Future<Welcome> fetchMainData() {
    return _mainProvider.getMainData();
  }

  Future<Individual> fetchIndividualData(String id) {
    return _individualProvider.getIndividualData(id);
  }
}
