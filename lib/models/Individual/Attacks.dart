class Attacks {
  Attacks({
    this.name,
    this.cost,
    this.convertedEnergyCost,
    this.damage,
    this.text,
  });

  Attacks.fromJson(dynamic json) {
    name = json['name'];
    cost = json['cost'] != null ? json['cost'].cast<String>() : [];
    convertedEnergyCost = json['convertedEnergyCost'];
    damage = json['damage'];
    text = json['text'];
  }
  String name;
  List<String> cost;
  int convertedEnergyCost;
  String damage;
  String text;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['cost'] = cost;
    map['convertedEnergyCost'] = convertedEnergyCost;
    map['damage'] = damage;
    map['text'] = text;
    return map;
  }
}
