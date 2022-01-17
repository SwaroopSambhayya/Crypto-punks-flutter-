class AssetContract {
  String? address;
  String? assetContractType;
  String? createdDate;
  String? name;
  String? nftVersion;
  dynamic openseaVersion;
  int? owner;
  String? schemaName;
  String? symbol;
  String? totalSupply;
  dynamic description;
  dynamic externalLink;
  dynamic imageUrl;
  bool? defaultToFiat;
  int? devBuyerFeeBasisPoints;
  int? devSellerFeeBasisPoints;
  bool? onlyProxiedTransfers;
  int? openseaBuyerFeeBasisPoints;
  int? openseaSellerFeeBasisPoints;
  int? buyerFeeBasisPoints;
  int? sellerFeeBasisPoints;
  dynamic payoutAddress;

  AssetContract({
    this.address,
    this.assetContractType,
    this.createdDate,
    this.name,
    this.nftVersion,
    this.openseaVersion,
    this.owner,
    this.schemaName,
    this.symbol,
    this.totalSupply,
    this.description,
    this.externalLink,
    this.imageUrl,
    this.defaultToFiat,
    this.devBuyerFeeBasisPoints,
    this.devSellerFeeBasisPoints,
    this.onlyProxiedTransfers,
    this.openseaBuyerFeeBasisPoints,
    this.openseaSellerFeeBasisPoints,
    this.buyerFeeBasisPoints,
    this.sellerFeeBasisPoints,
    this.payoutAddress,
  });

  factory AssetContract.fromJson(Map<String, dynamic> json) => AssetContract(
        address: json['address'] as String?,
        assetContractType: json['asset_contract_type'] as String?,
        createdDate: json['created_date'] as String?,
        name: json['name'] as String?,
        nftVersion: json['nft_version'] as String?,
        openseaVersion: json['opensea_version'] as dynamic,
        owner: json['owner'] as int?,
        schemaName: json['schema_name'] as String?,
        symbol: json['symbol'] as String?,
        totalSupply: json['total_supply'] as String?,
        description: json['description'] as dynamic,
        externalLink: json['external_link'] as dynamic,
        imageUrl: json['image_url'] as dynamic,
        defaultToFiat: json['default_to_fiat'] as bool?,
        devBuyerFeeBasisPoints: json['dev_buyer_fee_basis_points'] as int?,
        devSellerFeeBasisPoints: json['dev_seller_fee_basis_points'] as int?,
        onlyProxiedTransfers: json['only_proxied_transfers'] as bool?,
        openseaBuyerFeeBasisPoints:
            json['opensea_buyer_fee_basis_points'] as int?,
        openseaSellerFeeBasisPoints:
            json['opensea_seller_fee_basis_points'] as int?,
        buyerFeeBasisPoints: json['buyer_fee_basis_points'] as int?,
        sellerFeeBasisPoints: json['seller_fee_basis_points'] as int?,
        payoutAddress: json['payout_address'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'address': address,
        'asset_contract_type': assetContractType,
        'created_date': createdDate,
        'name': name,
        'nft_version': nftVersion,
        'opensea_version': openseaVersion,
        'owner': owner,
        'schema_name': schemaName,
        'symbol': symbol,
        'total_supply': totalSupply,
        'description': description,
        'external_link': externalLink,
        'image_url': imageUrl,
        'default_to_fiat': defaultToFiat,
        'dev_buyer_fee_basis_points': devBuyerFeeBasisPoints,
        'dev_seller_fee_basis_points': devSellerFeeBasisPoints,
        'only_proxied_transfers': onlyProxiedTransfers,
        'opensea_buyer_fee_basis_points': openseaBuyerFeeBasisPoints,
        'opensea_seller_fee_basis_points': openseaSellerFeeBasisPoints,
        'buyer_fee_basis_points': buyerFeeBasisPoints,
        'seller_fee_basis_points': sellerFeeBasisPoints,
        'payout_address': payoutAddress,
      };
}
