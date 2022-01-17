class Owner {
  dynamic user;
  String profileImgUrl;
  String? address;
  String? config;

  Owner({this.user, required this.profileImgUrl, this.address, this.config});

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        user: json['user'] as dynamic,
        profileImgUrl: json['profile_img_url'] ?? "",
        address: json['address'] as String?,
        config: json['config'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'user': user,
        'profile_img_url': profileImgUrl,
        'address': address,
        'config': config,
      };
}
