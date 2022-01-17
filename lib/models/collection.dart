import 'display_data.dart';

class Collection {
  dynamic bannerImageUrl;
  dynamic chatUrl;
  String? createdDate;
  bool? defaultToFiat;
  dynamic description;
  String? devBuyerFeeBasisPoints;
  String? devSellerFeeBasisPoints;
  dynamic discordUrl;
  DisplayData? displayData;
  dynamic externalUrl;
  bool? featured;
  dynamic featuredImageUrl;
  bool? hidden;
  String? safelistRequestStatus;
  dynamic imageUrl;
  bool? isSubjectToWhitelist;
  dynamic largeImageUrl;
  dynamic mediumUsername;
  String? name;
  bool? onlyProxiedTransfers;
  String? openseaBuyerFeeBasisPoints;
  String? openseaSellerFeeBasisPoints;
  dynamic payoutAddress;
  bool? requireEmail;
  dynamic shortDescription;
  String? slug;
  dynamic telegramUrl;
  dynamic twitterUsername;
  dynamic instagramUsername;
  dynamic wikiUrl;

  Collection({
    this.bannerImageUrl,
    this.chatUrl,
    this.createdDate,
    this.defaultToFiat,
    this.description,
    this.devBuyerFeeBasisPoints,
    this.devSellerFeeBasisPoints,
    this.discordUrl,
    this.displayData,
    this.externalUrl,
    this.featured,
    this.featuredImageUrl,
    this.hidden,
    this.safelistRequestStatus,
    this.imageUrl,
    this.isSubjectToWhitelist,
    this.largeImageUrl,
    this.mediumUsername,
    this.name,
    this.onlyProxiedTransfers,
    this.openseaBuyerFeeBasisPoints,
    this.openseaSellerFeeBasisPoints,
    this.payoutAddress,
    this.requireEmail,
    this.shortDescription,
    this.slug,
    this.telegramUrl,
    this.twitterUsername,
    this.instagramUsername,
    this.wikiUrl,
  });

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        bannerImageUrl: json['banner_image_url'] as dynamic,
        chatUrl: json['chat_url'] as dynamic,
        createdDate: json['created_date'] as String?,
        defaultToFiat: json['default_to_fiat'] as bool?,
        description: json['description'] as dynamic,
        devBuyerFeeBasisPoints: json['dev_buyer_fee_basis_points'] as String?,
        devSellerFeeBasisPoints: json['dev_seller_fee_basis_points'] as String?,
        discordUrl: json['discord_url'] as dynamic,
        displayData: json['display_data'] == null
            ? null
            : DisplayData.fromJson(
                json['display_data'] as Map<String, dynamic>),
        externalUrl: json['external_url'] as dynamic,
        featured: json['featured'] as bool?,
        featuredImageUrl: json['featured_image_url'] as dynamic,
        hidden: json['hidden'] as bool?,
        safelistRequestStatus: json['safelist_request_status'] as String?,
        imageUrl: json['image_url'] as dynamic,
        isSubjectToWhitelist: json['is_subject_to_whitelist'] as bool?,
        largeImageUrl: json['large_image_url'] as dynamic,
        mediumUsername: json['medium_username'] as dynamic,
        name: json['name'] as String?,
        onlyProxiedTransfers: json['only_proxied_transfers'] as bool?,
        openseaBuyerFeeBasisPoints:
            json['opensea_buyer_fee_basis_points'] as String?,
        openseaSellerFeeBasisPoints:
            json['opensea_seller_fee_basis_points'] as String?,
        payoutAddress: json['payout_address'] as dynamic,
        requireEmail: json['require_email'] as bool?,
        shortDescription: json['short_description'] as dynamic,
        slug: json['slug'] as String?,
        telegramUrl: json['telegram_url'] as dynamic,
        twitterUsername: json['twitter_username'] as dynamic,
        instagramUsername: json['instagram_username'] as dynamic,
        wikiUrl: json['wiki_url'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'banner_image_url': bannerImageUrl,
        'chat_url': chatUrl,
        'created_date': createdDate,
        'default_to_fiat': defaultToFiat,
        'description': description,
        'dev_buyer_fee_basis_points': devBuyerFeeBasisPoints,
        'dev_seller_fee_basis_points': devSellerFeeBasisPoints,
        'discord_url': discordUrl,
        'display_data': displayData?.toJson(),
        'external_url': externalUrl,
        'featured': featured,
        'featured_image_url': featuredImageUrl,
        'hidden': hidden,
        'safelist_request_status': safelistRequestStatus,
        'image_url': imageUrl,
        'is_subject_to_whitelist': isSubjectToWhitelist,
        'large_image_url': largeImageUrl,
        'medium_username': mediumUsername,
        'name': name,
        'only_proxied_transfers': onlyProxiedTransfers,
        'opensea_buyer_fee_basis_points': openseaBuyerFeeBasisPoints,
        'opensea_seller_fee_basis_points': openseaSellerFeeBasisPoints,
        'payout_address': payoutAddress,
        'require_email': requireEmail,
        'short_description': shortDescription,
        'slug': slug,
        'telegram_url': telegramUrl,
        'twitter_username': twitterUsername,
        'instagram_username': instagramUsername,
        'wiki_url': wikiUrl,
      };
}
