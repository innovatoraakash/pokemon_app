class Weaknesses {
  Weaknesses({
    this.type,
    this.value,
  });

  Weaknesses.fromJson(dynamic json) {
    type = json['type'];
    value = json['value'];
  }
  String type;
  String value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }
}
