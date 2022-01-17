import 'asset_contract.dart';
import 'collection.dart';
import 'creator.dart';
import 'owner.dart';
import 'trait.dart';

class PunkData {
  int id;
  String? tokenId;
  int? numSales;
  dynamic backgroundColor;
  String? imageUrl;
  String? imagePreviewUrl;
  String? imageThumbnailUrl;
  String imageOriginalUrl;
  dynamic animationUrl;
  dynamic animationOriginalUrl;
  String name;
  dynamic description;
  dynamic externalLink;
  AssetContract? assetContract;
  String? permalink;
  Collection? collection;
  int? decimals;
  String? tokenMetadata;
  Owner? owner;
  dynamic sellOrders;
  Creator? creator;
  List<Trait> traits;
  dynamic lastSale;
  dynamic topBid;
  dynamic listingDate;
  bool? isPresale;
  dynamic transferFeePaymentToken;
  dynamic transferFee;

  PunkData({
    required this.id,
    this.tokenId,
    this.numSales,
    this.backgroundColor,
    this.imageUrl,
    this.imagePreviewUrl,
    this.imageThumbnailUrl,
    required this.imageOriginalUrl,
    this.animationUrl,
    this.animationOriginalUrl,
    required this.name,
    this.description,
    this.externalLink,
    this.assetContract,
    this.permalink,
    this.collection,
    this.decimals,
    this.tokenMetadata,
    this.owner,
    this.sellOrders,
    this.creator,
    required this.traits,
    this.lastSale,
    this.topBid,
    this.listingDate,
    this.isPresale,
    this.transferFeePaymentToken,
    this.transferFee,
  });

  factory PunkData.fromJson(Map<String, dynamic> json) => PunkData(
        id: json['id'] ?? 1,
        tokenId: json['token_id'] as String?,
        numSales: json['num_sales'] as int?,
        backgroundColor: json['background_color'] as dynamic,
        imageUrl: json['image_url'] as String?,
        imagePreviewUrl: json['image_preview_url'] as String?,
        imageThumbnailUrl: json['image_thumbnail_url'] as String?,
        imageOriginalUrl: json['image_original_url'] ?? "",
        animationUrl: json['animation_url'] as dynamic,
        animationOriginalUrl: json['animation_original_url'] as dynamic,
        name: json['name'] ?? "",
        description: json['description'] as dynamic,
        externalLink: json['external_link'] as dynamic,
        assetContract: json['asset_contract'] == null
            ? null
            : AssetContract.fromJson(
                json['asset_contract'] as Map<String, dynamic>),
        permalink: json['permalink'] as String?,
        collection: json['collection'] == null
            ? null
            : Collection.fromJson(json['collection'] as Map<String, dynamic>),
        decimals: json['decimals'] as int?,
        tokenMetadata: json['token_metadata'] as String?,
        owner: json['owner'] == null
            ? null
            : Owner.fromJson(json['owner'] as Map<String, dynamic>),
        sellOrders: json['sell_orders'] as dynamic,
        creator: json['creator'] == null
            ? null
            : Creator.fromJson(json['creator'] as Map<String, dynamic>),
        traits: (json['traits'])
            ?.map<Trait>((e) => Trait.fromJson(e as Map<String, dynamic>))
            .toList(),
        lastSale: json['last_sale'] as dynamic,
        topBid: json['top_bid'] as dynamic,
        listingDate: json['listing_date'] as dynamic,
        isPresale: json['is_presale'] as bool?,
        transferFeePaymentToken: json['transfer_fee_payment_token'] as dynamic,
        transferFee: json['transfer_fee'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'token_id': tokenId,
        'num_sales': numSales,
        'background_color': backgroundColor,
        'image_url': imageUrl,
        'image_preview_url': imagePreviewUrl,
        'image_thumbnail_url': imageThumbnailUrl,
        'image_original_url': imageOriginalUrl,
        'animation_url': animationUrl,
        'animation_original_url': animationOriginalUrl,
        'name': name,
        'description': description,
        'external_link': externalLink,
        'asset_contract': assetContract?.toJson(),
        'permalink': permalink,
        'collection': collection?.toJson(),
        'decimals': decimals,
        'token_metadata': tokenMetadata,
        'owner': owner?.toJson(),
        'sell_orders': sellOrders,
        'creator': creator?.toJson(),
        'traits': traits.map((e) => e.toJson()).toList(),
        'last_sale': lastSale,
        'top_bid': topBid,
        'listing_date': listingDate,
        'is_presale': isPresale,
        'transfer_fee_payment_token': transferFeePaymentToken,
        'transfer_fee': transferFee,
      };
}
