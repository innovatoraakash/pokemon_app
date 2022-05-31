class Images {
  Images({
    this.small,
    this.large,
  });

  Images.fromJson(dynamic json) {
    small = json['small'];
    large = json['large'];
  }
  String small;
  String large;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['small'] = small;
    map['large'] = large;
    return map;
  }
}
