import 'Data.dart';

class Individual {
  Individual({
    this.data,
  });

  Individual.fromJson(dynamic json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Data data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data.toJson();
    }
    return map;
  }
}
