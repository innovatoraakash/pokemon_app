import 'package:pokemon_app/const/constants.dart';
import 'package:pokemon_app/models/main_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MainProvider {
  Future<Welcome> getMainData() async {
    try {
      final response = await http.Client().get(Uri.parse(apilink));

      return parsedJson(response.body);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      throw Exception();
    }
  }

  parsedJson(final response) {
    final jsonDecoded = json.decode(response);

    return Welcome.fromJson(jsonDecoded);
  }
}
