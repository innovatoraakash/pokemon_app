// To parse this JSON data, do
//
//     final individual = individualFromJson(jsonString);

import 'dart:convert';

Individual individualFromJson(String str) =>
    Individual.fromJson(json.decode(str));

String individualToJson(Individual data) => json.encode(data.toJson());

class Individual {
  Individual(
    this.data,
  );

  Data data;

  factory Individual.fromJson(Map<String, dynamic> json) => Individual(
        Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data(
    this.id,
    this.name,
    this.supertype,
    this.subtypes,
    this.hp,
    this.types,
    this.evolvesTo,
    this.rules,
    this.attacks,
    this.weaknesses,
    this.dataSet,
    this.images,
  );

  String id;
  String name;
  String supertype;
  List<String> subtypes;
  String hp;
  List<String> types;
  List<String> evolvesTo;
  List<String> rules;
  List<Attack> attacks;
  List<Weakness> weaknesses;
  Set dataSet;
  DataImages images;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        json["id"],
        json["name"],
        json["supertype"],
        List<String>.from(json["subtypes"].map((x) => x)),
        json["hp"],
        List<String>.from(json["types"].map((x) => x)),
        List<String>.from(json["evolvesTo"].map((x) => x)),
        List<String>.from(json["rules"].map((x) => x)),
        List<Attack>.from(json["attacks"].map((x) => Attack.fromJson(x))),
        List<Weakness>.from(
            json["weaknesses"].map((x) => Weakness.fromJson(x))),
        Set.fromJson(json["set"]),
        DataImages.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "supertype": supertype,
        "subtypes": List<dynamic>.from(subtypes.map((x) => x)),
        "hp": hp,
        "types": List<dynamic>.from(types.map((x) => x)),
        "evolvesTo": List<dynamic>.from(evolvesTo.map((x) => x)),
        "rules": List<dynamic>.from(rules.map((x) => x)),
        "attacks": List<dynamic>.from(attacks.map((x) => x.toJson())),
        "weaknesses": List<dynamic>.from(weaknesses.map((x) => x.toJson())),
        "set": dataSet.toJson(),
        "images": images.toJson(),
      };
}

class Attack {
  Attack(
    this.name,
    this.convertedEnergyCost,
    this.damage,
    this.text,
  );

  String name;
  int convertedEnergyCost;
  String damage;
  String text;

  factory Attack.fromJson(Map<String, dynamic> json) => Attack(
        json["name"],
        json["convertedEnergyCost"],
        json["damage"],
        json["text"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "convertedEnergyCost": convertedEnergyCost,
        "damage": damage,
        "text": text,
      };
}

class Set {
  Set(
    this.ptcgoCode,
    this.releaseDate,
    this.updatedAt,
    this.images,
  );

  String ptcgoCode;
  String releaseDate;
  String updatedAt;
  SetImages images;

  factory Set.fromJson(Map<String, dynamic> json) => Set(
        json["ptcgoCode"],
        json["releaseDate"],
        json["updatedAt"],
        SetImages.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "ptcgoCode": ptcgoCode,
        "releaseDate": releaseDate,
        "updatedAt": updatedAt,
        "images": images.toJson(),
      };
}

class SetImages {
  SetImages(
    this.symbol,
    this.logo,
  );

  String symbol;
  String logo;

  factory SetImages.fromJson(Map<String, dynamic> json) => SetImages(
        json["symbol"],
        json["logo"],
      );

  Map<String, dynamic> toJson() => {
        "symbol": symbol,
        "logo": logo,
      };
}

class DataImages {
  DataImages(
    this.small,
    this.large,
  );

  String small;
  String large;

  factory DataImages.fromJson(Map<String, dynamic> json) => DataImages(
        json["small"],
        json["large"],
      );

  Map<String, dynamic> toJson() => {
        "small": small,
        "large": large,
      };
}

class Weakness {
  Weakness(this.type, this.value);

  String type;
  String value;

  factory Weakness.fromJson(Map<String, dynamic> json) => Weakness(
        json["type"],
        json["value"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "value": value,
      };
}
