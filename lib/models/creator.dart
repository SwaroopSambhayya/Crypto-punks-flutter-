class Creator {
  dynamic user;
  String? profileImgUrl;
  String? address;
  String? config;

  Creator({this.user, this.profileImgUrl, this.address, this.config});

  factory Creator.fromJson(Map<String, dynamic> json) => Creator(
        user: json['user'] as dynamic,
        profileImgUrl: json['profile_img_url'] as String?,
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
