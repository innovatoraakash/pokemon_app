import 'Abilities.dart';
import 'Attacks.dart';
import 'Weaknesses.dart';
import 'Resistances.dart';
import 'Images.dart';

class Data {
  Data({
    this.id,
    this.name,
    this.supertype,
    this.subtypes,
    this.level,
    this.hp,
    this.types,
    this.evolvesFrom,
    this.abilities,
    this.attacks,
    this.weaknesses,
    this.resistances,
    this.images,
  });

  Data.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    supertype = json['supertype'];
    subtypes = json['subtypes'] != null ? json['subtypes'].cast<String>() : [];
    level = json['level'];
    hp = json['hp'];
    types = json['types'] != null ? json['types'].cast<String>() : [];
    evolvesFrom = json['evolvesFrom'];
    if (json['abilities'] != null) {
      abilities = [];
      json['abilities'].forEach((v) {
        abilities.add(Abilities.fromJson(v));
      });
    }
    if (json['attacks'] != null) {
      attacks = [];
      json['attacks'].forEach((v) {
        attacks.add(Attacks.fromJson(v));
      });
    }
    if (json['weaknesses'] != null) {
      weaknesses = [];
      json['weaknesses'].forEach((v) {
        weaknesses.add(Weaknesses.fromJson(v));
      });
    }
    if (json['resistances'] != null) {
      resistances = [];
      json['resistances'].forEach((v) {
        resistances.add(Resistances.fromJson(v));
      });
    }
    images = json['images'] != null ? Images.fromJson(json['images']) : null;
  }
  String id;
  String name;
  String supertype;
  List<String> subtypes;
  String level;
  String hp;
  List<String> types;
  String evolvesFrom;
  List<Abilities> abilities;
  List<Attacks> attacks;
  List<Weaknesses> weaknesses;
  List<Resistances> resistances;
  Images images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['supertype'] = supertype;
    map['subtypes'] = subtypes;
    map['level'] = level;
    map['hp'] = hp;
    map['types'] = types;
    map['evolvesFrom'] = evolvesFrom;
    if (abilities != null) {
      map['abilities'] = abilities.map((v) => v.toJson()).toList();
    }
    if (attacks != null) {
      map['attacks'] = attacks.map((v) => v.toJson()).toList();
    }
    if (weaknesses != null) {
      map['weaknesses'] = weaknesses.map((v) => v.toJson()).toList();
    }
    if (resistances != null) {
      map['resistances'] = resistances.map((v) => v.toJson()).toList();
    }
    if (images != null) {
      map['images'] = images.toJson();
    }
    return map;
  }
}
