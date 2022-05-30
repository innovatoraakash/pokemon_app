/// data : [{"id":"g1-1","name":"Venusaur-EX","supertype":"Pokémon","subtypes":["Basic","EX"],"hp":"180","types":["Grass"],"evolvesTo":["M Venusaur-EX"],"rules":["Pokémon-EX rule: When a Pokémon-EX has been Knocked Out, your opponent takes 2 Prize cards."],"attacks":[{"name":"Frog Hop","cost":["Grass","Colorless","Colorless"],"convertedEnergyCost":3,"damage":"40+","text":"Flip a coin. If heads, this attack does 40 more damage."},{"name":"Poison Impact","cost":["Grass","Grass","Colorless","Colorless"],"convertedEnergyCost":4,"damage":"80","text":"Your opponent's Active Pokémon is now Asleep and Poisoned."}],"weaknesses":[{"type":"Fire","value":"×2"}],"images":{"small":"https://images.pokemontcg.io/g1/1.png","large":"https://images.pokemontcg.io/g1/1_hires.png"}}]

class Welcome {
  Welcome({
    List<Data> data,
  }) {
    _data = data;
  }

  Welcome.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data.add(Data.fromJson(v));
      });
    }
  }
  List<Data> _data;
  Welcome copyWith({
    List<Data> data,
  }) =>
      Welcome(
        data: data ?? _data,
      );
  List<Data> get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : "g1-1"
/// name : "Venusaur-EX"
/// supertype : "Pokémon"
/// subtypes : ["Basic","EX"]
/// hp : "180"
/// types : ["Grass"]
/// evolvesTo : ["M Venusaur-EX"]
/// rules : ["Pokémon-EX rule: When a Pokémon-EX has been Knocked Out, your opponent takes 2 Prize cards."]
/// attacks : [{"name":"Frog Hop","cost":["Grass","Colorless","Colorless"],"convertedEnergyCost":3,"damage":"40+","text":"Flip a coin. If heads, this attack does 40 more damage."},{"name":"Poison Impact","cost":["Grass","Grass","Colorless","Colorless"],"convertedEnergyCost":4,"damage":"80","text":"Your opponent's Active Pokémon is now Asleep and Poisoned."}]
/// weaknesses : [{"type":"Fire","value":"×2"}]
/// images : {"small":"https://images.pokemontcg.io/g1/1.png","large":"https://images.pokemontcg.io/g1/1_hires.png"}

class Data {
  Data({
    String id,
    String name,
    String supertype,
    List<String> subtypes,
    String hp,
    List<String> types,
    List<String> evolvesTo,
    List<String> rules,
    List<Attacks> attacks,
    List<Weaknesses> weaknesses,
    Images images,
  }) {
    _id = id;
    _name = name;
    _supertype = supertype;
    _subtypes = subtypes;
    _hp = hp;
    _types = types;
    _evolvesTo = evolvesTo;
    _rules = rules;
    _attacks = attacks;
    _weaknesses = weaknesses;
    _images = images;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _supertype = json['supertype'];
    _subtypes = json['subtypes'] != null ? json['subtypes'].cast<String>() : [];
    _hp = json['hp'];
    _types = json['types'] != null ? json['types'].cast<String>() : [];
    _evolvesTo =
        json['evolvesTo'] != null ? json['evolvesTo'].cast<String>() : [];
    _rules = json['rules'] != null ? json['rules'].cast<String>() : [];
    if (json['attacks'] != null) {
      _attacks = [];
      json['attacks'].forEach((v) {
        _attacks.add(Attacks.fromJson(v));
      });
    }
    if (json['weaknesses'] != null) {
      _weaknesses = [];
      json['weaknesses'].forEach((v) {
        _weaknesses.add(Weaknesses.fromJson(v));
      });
    }
    _images = json['images'] != null ? Images.fromJson(json['images']) : null;
  }
  String _id;
  String _name;
  String _supertype;
  List<String> _subtypes;
  String _hp;
  List<String> _types;
  List<String> _evolvesTo;
  List<String> _rules;
  List<Attacks> _attacks;
  List<Weaknesses> _weaknesses;
  Images _images;
  Data copyWith({
    String id,
    String name,
    String supertype,
    List<String> subtypes,
    String hp,
    List<String> types,
    List<String> evolvesTo,
    List<String> rules,
    List<Attacks> attacks,
    List<Weaknesses> weaknesses,
    Images images,
  }) =>
      Data(
        id: id ?? _id,
        name: name ?? _name,
        supertype: supertype ?? _supertype,
        subtypes: subtypes ?? _subtypes,
        hp: hp ?? _hp,
        types: types ?? _types,
        evolvesTo: evolvesTo ?? _evolvesTo,
        rules: rules ?? _rules,
        attacks: attacks ?? _attacks,
        weaknesses: weaknesses ?? _weaknesses,
        images: images ?? _images,
      );
  String get id => _id;
  String get name => _name;
  String get supertype => _supertype;
  List<String> get subtypes => _subtypes;
  String get hp => _hp;
  List<String> get types => _types;
  List<String> get evolvesTo => _evolvesTo;
  List<String> get rules => _rules;
  List<Attacks> get attacks => _attacks;
  List<Weaknesses> get weaknesses => _weaknesses;
  Images get images => _images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['supertype'] = _supertype;
    map['subtypes'] = _subtypes;
    map['hp'] = _hp;
    map['types'] = _types;
    map['evolvesTo'] = _evolvesTo;
    map['rules'] = _rules;
    if (_attacks != null) {
      map['attacks'] = _attacks.map((v) => v.toJson()).toList();
    }
    if (_weaknesses != null) {
      map['weaknesses'] = _weaknesses.map((v) => v.toJson()).toList();
    }
    if (_images != null) {
      map['images'] = _images.toJson();
    }
    return map;
  }
}

/// small : "https://images.pokemontcg.io/g1/1.png"
/// large : "https://images.pokemontcg.io/g1/1_hires.png"

class Images {
  Images({
    String small,
    String large,
  }) {
    _small = small;
    _large = large;
  }

  Images.fromJson(dynamic json) {
    _small = json['small'];
    _large = json['large'];
  }
  String _small;
  String _large;
  Images copyWith({
    String small,
    String large,
  }) =>
      Images(
        small: small ?? _small,
        large: large ?? _large,
      );
  String get small => _small;
  String get large => _large;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['small'] = _small;
    map['large'] = _large;
    return map;
  }
}

/// type : "Fire"
/// value : "×2"

class Weaknesses {
  Weaknesses({
    String type,
    String value,
  }) {
    _type = type;
    _value = value;
  }

  Weaknesses.fromJson(dynamic json) {
    _type = json['type'];
    _value = json['value'];
  }
  String _type;
  String _value;
  Weaknesses copyWith({
    String type,
    String value,
  }) =>
      Weaknesses(
        type: type ?? _type,
        value: value ?? _value,
      );
  String get type => _type;
  String get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['value'] = _value;
    return map;
  }
}

/// name : "Frog Hop"
/// cost : ["Grass","Colorless","Colorless"]
/// convertedEnergyCost : 3
/// damage : "40+"
/// text : "Flip a coin. If heads, this attack does 40 more damage."

class Attacks {
  Attacks({
    String name,
    List<String> cost,
    int convertedEnergyCost,
    String damage,
    String text,
  }) {
    _name = name;
    _cost = cost;
    _convertedEnergyCost = convertedEnergyCost;
    _damage = damage;
    _text = text;
  }

  Attacks.fromJson(dynamic json) {
    _name = json['name'];
    _cost = json['cost'] != null ? json['cost'].cast<String>() : [];
    _convertedEnergyCost = json['convertedEnergyCost'];
    _damage = json['damage'];
    _text = json['text'];
  }
  String _name;
  List<String> _cost;
  int _convertedEnergyCost;
  String _damage;
  String _text;
  Attacks copyWith({
    String name,
    List<String> cost,
    int convertedEnergyCost,
    String damage,
    String text,
  }) =>
      Attacks(
        name: name ?? _name,
        cost: cost ?? _cost,
        convertedEnergyCost: convertedEnergyCost ?? _convertedEnergyCost,
        damage: damage ?? _damage,
        text: text ?? _text,
      );
  String get name => _name;
  List<String> get cost => _cost;
  int get convertedEnergyCost => _convertedEnergyCost;
  String get damage => _damage;
  String get text => _text;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['cost'] = _cost;
    map['convertedEnergyCost'] = _convertedEnergyCost;
    map['damage'] = _damage;
    map['text'] = _text;
    return map;
  }
}
