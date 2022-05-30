// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome(
    this.data,
  );

  List<Datum> data;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum(
    this.id,
    this.name,
    this.supertype,
    this.images,
  );

  String id;
  String name;
  String supertype;
  Images images;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        json["id"],
        json["name"],
        json["supertype"],
        Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "supertype": supertype,
        "images": images.toJson(),
      };
}

class Images {
  Images(
    this.small,
    this.large,
  );

  String small;
  String large;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        json["small"],
        json["large"],
      );

  Map<String, dynamic> toJson() => {
        "small": small,
        "large": large,
      };
}
