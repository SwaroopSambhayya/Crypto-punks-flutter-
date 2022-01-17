class DisplayData {
  String? cardDisplayStyle;
  List<dynamic>? images;

  DisplayData({this.cardDisplayStyle, this.images});

  factory DisplayData.fromJson(Map<String, dynamic> json) => DisplayData(
        cardDisplayStyle: json['card_display_style'] as String?,
        images: json['images'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'card_display_style': cardDisplayStyle,
        'images': images,
      };
}
