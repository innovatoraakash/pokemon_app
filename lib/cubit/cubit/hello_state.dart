// class Welcome {
//   Welcome({
//     required this.data,
//   });
//   late final List<Data> data;
//
//   Welcome.fromJson(Map<String, dynamic> json) {
//     data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['data'] = data.map((e) => e.toJson()).toList();
//     return _data;
//   }
// }
//
// class Data {
//   Data({
//     required this.id,
//     required this.name,
//     required this.supertype,
//     required this.subtypes,
//     required this.hp,
//     required this.types,
//     required this.evolvesTo,
//     required this.rules,
//     required this.attacks,
//     required this.weaknesses,
//     required this.convertedRetreatCost,
//     required this.set,
//     required this.images,
//   });
//   late final String id;
//   late final String name;
//   late final String supertype;
//   late final List<String> subtypes;
//   late final String hp;
//   late final List<String> types;
//   late final List<String> evolvesTo;
//   late final List<String> rules;
//   late final List<Attacks> attacks;
//   late final List<Weaknesses> weaknesses;
//   late final int convertedRetreatCost;
//   late final Set set;
//   late final Images images;
//
//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     supertype = json['supertype'];
//     subtypes = List.castFrom<dynamic, String>(json['subtypes']);
//     hp = json['hp'];
//     types = List.castFrom<dynamic, String>(json['types']);
//     evolvesTo = List.castFrom<dynamic, String>(json['evolvesTo']);
//     rules = List.castFrom<dynamic, String>(json['rules']);
//     attacks =
//         List.from(json['attacks']).map((e) => Attacks.fromJson(e)).toList();
//     weaknesses = List.from(json['weaknesses'])
//         .map((e) => Weaknesses.fromJson(e))
//         .toList();
//     convertedRetreatCost = json['convertedRetreatCost'];
//     set = Set.fromJson(json['set']);
//     images = Images.fromJson(json['images']);
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['id'] = id;
//     _data['name'] = name;
//     _data['supertype'] = supertype;
//     _data['subtypes'] = subtypes;
//     _data['hp'] = hp;
//     _data['types'] = types;
//     _data['evolvesTo'] = evolvesTo;
//     _data['rules'] = rules;
//     _data['attacks'] = attacks.map((e) => e.toJson()).toList();
//     _data['weaknesses'] = weaknesses.map((e) => e.toJson()).toList();
//     _data['convertedRetreatCost'] = convertedRetreatCost;
//     _data['set'] = set.toJson();
//     _data['images'] = images.toJson();
//     return _data;
//   }
// }
//
// class Attacks {
//   Attacks({
//     required this.name,
//     required this.convertedEnergyCost,
//     required this.damage,
//     required this.text,
//   });
//   late final String name;
//   late final int convertedEnergyCost;
//   late final String damage;
//   late final String text;
//
//   Attacks.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     convertedEnergyCost = json['convertedEnergyCost'];
//     damage = json['damage'];
//     text = json['text'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['name'] = name;
//     _data['convertedEnergyCost'] = convertedEnergyCost;
//     _data['damage'] = damage;
//     _data['text'] = text;
//     return _data;
//   }
// }
//
// class Weaknesses {
//   Weaknesses({
//     required this.type,
//     required this.value,
//   });
//   late final String type;
//   late final String value;
//
//   Weaknesses.fromJson(Map<String, dynamic> json) {
//     type = json['type'];
//     value = json['value'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['type'] = type;
//     _data['value'] = value;
//     return _data;
//   }
// }
//
// class Set {
//   Set({
//     required this.releaseDate,
//     required this.updatedAt,
//     required this.images,
//   });
//   late final String releaseDate;
//   late final String updatedAt;
//   late final Images images;
//
//   Set.fromJson(Map<String, dynamic> json) {
//     releaseDate = json['releaseDate'];
//     updatedAt = json['updatedAt'];
//     images = Images.fromJson(json['images']);
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['releaseDate'] = releaseDate;
//     _data['updatedAt'] = updatedAt;
//     _data['images'] = images.toJson();
//     return _data;
//   }
// }
//
// class Images {
//   Images({
//     required this.symbol,
//     required this.logo,
//   });
//   late final String symbol;
//   late final String logo;
//
//   Images.fromJson(Map<String, dynamic> json) {
//     symbol = json['symbol'];
//     logo = json['logo'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['symbol'] = symbol;
//     _data['logo'] = logo;
//     return _data;
//   }
// }
