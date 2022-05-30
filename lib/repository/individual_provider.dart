import 'package:pokemon_app/const/constants.dart';
import 'package:pokemon_app/models/individual_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class IndividualProvider {
  Future<Individual> getIndividualData(String id) async {
    try {
      final response = await http.Client().get(Uri.parse("$apilink/$id"));
      print(response.body);
      return parsedJson(response.body);
      // return individualFromJson(response.body);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      throw Exception();
    }
  }

  parsedJson(final response) {
    final jsonDecoded = json.decode(response);

    return Individual.fromJson(jsonDecoded);
  }
}
