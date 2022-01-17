class Trait {
  String? traitType;
  String value;
  dynamic displayType;
  dynamic maxValue;
  int? traitCount;
  dynamic order;

  Trait({
    this.traitType,
    required this.value,
    this.displayType,
    this.maxValue,
    this.traitCount,
    this.order,
  });

  factory Trait.fromJson(Map<String, dynamic> json) => Trait(
        traitType: json['trait_type'] as String?,
        value: json['value'] ?? 1,
        displayType: json['display_type'] as dynamic,
        maxValue: json['max_value'] as dynamic,
        traitCount: json['trait_count'] as int?,
        order: json['order'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'trait_type': traitType,
        'value': value,
        'display_type': displayType,
        'max_value': maxValue,
        'trait_count': traitCount,
        'order': order,
      };
}
