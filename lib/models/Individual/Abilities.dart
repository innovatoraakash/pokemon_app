class Abilities {
  Abilities({
    this.name,
    this.text,
    this.type,
  });

  Abilities.fromJson(dynamic json) {
    name = json['name'];
    text = json['text'];
    type = json['type'];
  }
  String name;
  String text;
  String type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['text'] = text;
    map['type'] = type;
    return map;
  }
}
