import 'dart:convert';
import 'dart:developer';

import 'package:crypto_punk_clone/models/punk_data.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<List<PunkData>> getPunkData() async {
  Map<String, dynamic> data;
  List<PunkData>? result = [];
  try {
    var url = Uri.https("testnets-api.opensea.io", "/assets", {
      'order_direction': "asc",
      "asset_contract_address": "0x238f65eF9231d86bd9Bb2eFDeAF4306fd69e2A89"
    });
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      data["assets"].forEach((punk) {
        result.add(PunkData.fromJson(punk));
      });
    }
  } catch (e) {
    log(e.toString());
  }
  if (result.isEmpty) {
    dummyData["dummyData"]?.forEach((punk) {
      result.add(PunkData.fromJson(punk));
    });
  }
  return result;
}

const dummyData = {
  "dummyData": [
    {
      "id": 28806486,
      "token_id": "0",
      "num_sales": 0,
      "background_color": null,
      "image_url":
          "https://lh3.googleusercontent.com/9B1oTFEv4DeaW9gFwnd1ION2NzfGnC9lHfjnPNSbNkDZmID0P7Di6Y6ptZxZuf0oaWgnAKLu1eqEbdlCJSpHDFUceo2D7H9c0wK56Q",
      "image_preview_url":
          "https://lh3.googleusercontent.com/9B1oTFEv4DeaW9gFwnd1ION2NzfGnC9lHfjnPNSbNkDZmID0P7Di6Y6ptZxZuf0oaWgnAKLu1eqEbdlCJSpHDFUceo2D7H9c0wK56Q=s250",
      "image_thumbnail_url":
          "https://lh3.googleusercontent.com/9B1oTFEv4DeaW9gFwnd1ION2NzfGnC9lHfjnPNSbNkDZmID0P7Di6Y6ptZxZuf0oaWgnAKLu1eqEbdlCJSpHDFUceo2D7H9c0wK56Q=s128",
      "image_original_url":
          "https://ipfs.io/ipfs/bafybeigqkficum3anns36jid3dxvc4yfauyuvqjulbg43n23qxn3ce3tyu",
      "animation_url": null,
      "animation_original_url": null,
      "name": "Bandhana Punk",
      "description": null,
      "external_link": null,
      "asset_contract": {
        "address": "0x238f65ef9231d86bd9bb2efdeaf4306fd69e2a89",
        "asset_contract_type": "non-fungible",
        "created_date": "2022-01-10T05:39:58.937703",
        "name": "CP Punks",
        "nft_version": "3.0",
        "opensea_version": null,
        "owner": 5078005,
        "schema_name": "ERC721",
        "symbol": "CP",
        "total_supply": "0",
        "description": null,
        "external_link": null,
        "image_url": null,
        "default_to_fiat": false,
        "dev_buyer_fee_basis_points": 0,
        "dev_seller_fee_basis_points": 0,
        "only_proxied_transfers": false,
        "opensea_buyer_fee_basis_points": 0,
        "opensea_seller_fee_basis_points": 250,
        "buyer_fee_basis_points": 0,
        "seller_fee_basis_points": 250,
        "payout_address": null
      },
      "permalink":
          "https://testnets.opensea.io/assets/0x238f65ef9231d86bd9bb2efdeaf4306fd69e2a89/0",
      "collection": {
        "banner_image_url": null,
        "chat_url": null,
        "created_date": "2022-01-10T05:45:36.347034",
        "default_to_fiat": false,
        "description": null,
        "dev_buyer_fee_basis_points": "0",
        "dev_seller_fee_basis_points": "0",
        "discord_url": null,
        "display_data": {"card_display_style": "contain", "images": []},
        "external_url": null,
        "featured": false,
        "featured_image_url": null,
        "hidden": false,
        "safelist_request_status": "not_requested",
        "image_url": null,
        "is_subject_to_whitelist": false,
        "large_image_url": null,
        "medium_username": null,
        "name": "CP Punks - axKIKWTaIf",
        "only_proxied_transfers": false,
        "opensea_buyer_fee_basis_points": "0",
        "opensea_seller_fee_basis_points": "250",
        "payout_address": null,
        "require_email": false,
        "short_description": null,
        "slug": "cp-punks-axkikwtaif",
        "telegram_url": null,
        "twitter_username": null,
        "instagram_username": null,
        "wiki_url": null
      },
      "decimals": 0,
      "token_metadata":
          "https://ipfs.io/ipfs/bafkreigz3tym7e4fqkgt2mccd3syy32pndfvxmqth5bs3iybxghdbrtx54",
      "owner": {
        "user": null,
        "profile_img_url":
            "https://storage.googleapis.com/opensea-static/opensea-profile/23.png",
        "address": "0xd3eb5c9f4a407470ef715c3f9d4538da666f6e17",
        "config": ""
      },
      "sell_orders": null,
      "creator": {
        "user": null,
        "profile_img_url":
            "https://storage.googleapis.com/opensea-static/opensea-profile/23.png",
        "address": "0xd3eb5c9f4a407470ef715c3f9d4538da666f6e17",
        "config": ""
      },
      "traits": [
        {
          "trait_type": "price",
          "value": "8",
          "display_type": null,
          "max_value": null,
          "trait_count": 1,
          "order": null
        }
      ],
      "last_sale": null,
      "top_bid": null,
      "listing_date": null,
      "is_presale": false,
      "transfer_fee_payment_token": null,
      "transfer_fee": null
    },
    {
      "id": 28806507,
      "token_id": "1",
      "num_sales": 0,
      "background_color": null,
      "image_url":
          "https://lh3.googleusercontent.com/hJKQWDj6ZUlEnBsdxH-_gK7sAosVTJjBLP_UE4TD-wVBFATfXgRJheHy1CGwp8Ly3Gz3yNvW7H9fJOjbyYt6qsmDzcld6ObliXouJz8",
      "image_preview_url":
          "https://lh3.googleusercontent.com/hJKQWDj6ZUlEnBsdxH-_gK7sAosVTJjBLP_UE4TD-wVBFATfXgRJheHy1CGwp8Ly3Gz3yNvW7H9fJOjbyYt6qsmDzcld6ObliXouJz8=s250",
      "image_thumbnail_url":
          "https://lh3.googleusercontent.com/hJKQWDj6ZUlEnBsdxH-_gK7sAosVTJjBLP_UE4TD-wVBFATfXgRJheHy1CGwp8Ly3Gz3yNvW7H9fJOjbyYt6qsmDzcld6ObliXouJz8=s128",
      "image_original_url":
          "https://ipfs.io/ipfs/bafybeiczq5i7rjz5ddp322uz4bfvle5753n56xrnirefosues3lk5getwu",
      "animation_url": null,
      "animation_original_url": null,
      "name": "Cyber Punk",
      "description": null,
      "external_link": null,
      "asset_contract": {
        "address": "0x238f65ef9231d86bd9bb2efdeaf4306fd69e2a89",
        "asset_contract_type": "non-fungible",
        "created_date": "2022-01-10T05:39:58.937703",
        "name": "CP Punks",
        "nft_version": "3.0",
        "opensea_version": null,
        "owner": 5078005,
        "schema_name": "ERC721",
        "symbol": "CP",
        "total_supply": "0",
        "description": null,
        "external_link": null,
        "image_url": null,
        "default_to_fiat": false,
        "dev_buyer_fee_basis_points": 0,
        "dev_seller_fee_basis_points": 0,
        "only_proxied_transfers": false,
        "opensea_buyer_fee_basis_points": 0,
        "opensea_seller_fee_basis_points": 250,
        "buyer_fee_basis_points": 0,
        "seller_fee_basis_points": 250,
        "payout_address": null
      },
      "permalink":
          "https://testnets.opensea.io/assets/0x238f65ef9231d86bd9bb2efdeaf4306fd69e2a89/1",
      "collection": {
        "banner_image_url": null,
        "chat_url": null,
        "created_date": "2022-01-10T05:45:36.347034",
        "default_to_fiat": false,
        "description": null,
        "dev_buyer_fee_basis_points": "0",
        "dev_seller_fee_basis_points": "0",
        "discord_url": null,
        "display_data": {"card_display_style": "contain", "images": []},
        "external_url": null,
        "featured": false,
        "featured_image_url": null,
        "hidden": false,
        "safelist_request_status": "not_requested",
        "image_url": null,
        "is_subject_to_whitelist": false,
        "large_image_url": null,
        "medium_username": null,
        "name": "CP Punks - axKIKWTaIf",
        "only_proxied_transfers": false,
        "opensea_buyer_fee_basis_points": "0",
        "opensea_seller_fee_basis_points": "250",
        "payout_address": null,
        "require_email": false,
        "short_description": null,
        "slug": "cp-punks-axkikwtaif",
        "telegram_url": null,
        "twitter_username": null,
        "instagram_username": null,
        "wiki_url": null
      },
      "decimals": 0,
      "token_metadata":
          "https://ipfs.io/ipfs/bafkreiht7grpiyu5m4mwye6d6w5n3ps6kfvx5qftmjjkhvv2zwr7rsg6ay",
      "owner": {
        "user": null,
        "profile_img_url":
            "https://storage.googleapis.com/opensea-static/opensea-profile/23.png",
        "address": "0xd3eb5c9f4a407470ef715c3f9d4538da666f6e17",
        "config": ""
      },
      "sell_orders": null,
      "creator": {
        "user": null,
        "profile_img_url":
            "https://storage.googleapis.com/opensea-static/opensea-profile/23.png",
        "address": "0xd3eb5c9f4a407470ef715c3f9d4538da666f6e17",
        "config": ""
      },
      "traits": [
        {
          "trait_type": "price",
          "value": "12",
          "display_type": null,
          "max_value": null,
          "trait_count": 2,
          "order": null
        }
      ],
      "last_sale": null,
      "top_bid": null,
      "listing_date": null,
      "is_presale": false,
      "transfer_fee_payment_token": null,
      "transfer_fee": null
    },
    {
      "id": 28806611,
      "token_id": "2",
      "num_sales": 0,
      "background_color": null,
      "image_url":
          "https://lh3.googleusercontent.com/cFebPRhI6RMwGCHOtuGwvvNu4JFH_GRJpCG_0zFiHn03XAm-lCT__emfiZqdDCkkwRkg33ZP6avBv9iNDK8gtY4EKzvGz7jxA0DQxQ",
      "image_preview_url":
          "https://lh3.googleusercontent.com/cFebPRhI6RMwGCHOtuGwvvNu4JFH_GRJpCG_0zFiHn03XAm-lCT__emfiZqdDCkkwRkg33ZP6avBv9iNDK8gtY4EKzvGz7jxA0DQxQ=s250",
      "image_thumbnail_url":
          "https://lh3.googleusercontent.com/cFebPRhI6RMwGCHOtuGwvvNu4JFH_GRJpCG_0zFiHn03XAm-lCT__emfiZqdDCkkwRkg33ZP6avBv9iNDK8gtY4EKzvGz7jxA0DQxQ=s128",
      "image_original_url":
          "https://ipfs.io/ipfs/bafkreiasgnibw32isqfyjnv5lhj4wxzp6izayculjlo4ampmmfla3j4tj4",
      "animation_url": null,
      "animation_original_url": null,
      "name": "Cigar Hat Punk",
      "description": null,
      "external_link": null,
      "asset_contract": {
        "address": "0x238f65ef9231d86bd9bb2efdeaf4306fd69e2a89",
        "asset_contract_type": "non-fungible",
        "created_date": "2022-01-10T05:39:58.937703",
        "name": "CP Punks",
        "nft_version": "3.0",
        "opensea_version": null,
        "owner": 5078005,
        "schema_name": "ERC721",
        "symbol": "CP",
        "total_supply": "0",
        "description": null,
        "external_link": null,
        "image_url": null,
        "default_to_fiat": false,
        "dev_buyer_fee_basis_points": 0,
        "dev_seller_fee_basis_points": 0,
        "only_proxied_transfers": false,
        "opensea_buyer_fee_basis_points": 0,
        "opensea_seller_fee_basis_points": 250,
        "buyer_fee_basis_points": 0,
        "seller_fee_basis_points": 250,
        "payout_address": null
      },
      "permalink":
          "https://testnets.opensea.io/assets/0x238f65ef9231d86bd9bb2efdeaf4306fd69e2a89/2",
      "collection": {
        "banner_image_url": null,
        "chat_url": null,
        "created_date": "2022-01-10T05:45:36.347034",
        "default_to_fiat": false,
        "description": null,
        "dev_buyer_fee_basis_points": "0",
        "dev_seller_fee_basis_points": "0",
        "discord_url": null,
        "display_data": {"card_display_style": "contain", "images": []},
        "external_url": null,
        "featured": false,
        "featured_image_url": null,
        "hidden": false,
        "safelist_request_status": "not_requested",
        "image_url": null,
        "is_subject_to_whitelist": false,
        "large_image_url": null,
        "medium_username": null,
        "name": "CP Punks - axKIKWTaIf",
        "only_proxied_transfers": false,
        "opensea_buyer_fee_basis_points": "0",
        "opensea_seller_fee_basis_points": "250",
        "payout_address": null,
        "require_email": false,
        "short_description": null,
        "slug": "cp-punks-axkikwtaif",
        "telegram_url": null,
        "twitter_username": null,
        "instagram_username": null,
        "wiki_url": null
      },
      "decimals": 0,
      "token_metadata":
          "https://ipfs.io/ipfs/bafkreibonlr2dg7su5lr6n3va3gdklz4qeasbn6wu4vwcy6numm6kx4cqu",
      "owner": {
        "user": null,
        "profile_img_url":
            "https://storage.googleapis.com/opensea-static/opensea-profile/23.png",
        "address": "0xd3eb5c9f4a407470ef715c3f9d4538da666f6e17",
        "config": ""
      },
      "sell_orders": null,
      "creator": {
        "user": null,
        "profile_img_url":
            "https://storage.googleapis.com/opensea-static/opensea-profile/23.png",
        "address": "0xd3eb5c9f4a407470ef715c3f9d4538da666f6e17",
        "config": ""
      },
      "traits": [
        {
          "trait_type": "price",
          "value": "7",
          "display_type": null,
          "max_value": null,
          "trait_count": 1,
          "order": null
        }
      ],
      "last_sale": null,
      "top_bid": null,
      "listing_date": null,
      "is_presale": false,
      "transfer_fee_payment_token": null,
      "transfer_fee": null
    },
    {
      "id": 28806626,
      "token_id": "3",
      "num_sales": 0,
      "background_color": null,
      "image_url":
          "https://lh3.googleusercontent.com/Q1Y5C8jdc828wkjPuNf_DAz3cm90bh9CK6LZQLZzB3thOdegbRt3600vz5PhMnVggKddQD3rCH6JEGOd3VxidQ5H54SmBMg64eMpzw",
      "image_preview_url":
          "https://lh3.googleusercontent.com/Q1Y5C8jdc828wkjPuNf_DAz3cm90bh9CK6LZQLZzB3thOdegbRt3600vz5PhMnVggKddQD3rCH6JEGOd3VxidQ5H54SmBMg64eMpzw=s250",
      "image_thumbnail_url":
          "https://lh3.googleusercontent.com/Q1Y5C8jdc828wkjPuNf_DAz3cm90bh9CK6LZQLZzB3thOdegbRt3600vz5PhMnVggKddQD3rCH6JEGOd3VxidQ5H54SmBMg64eMpzw=s128",
      "image_original_url":
          "https://ipfs.io/ipfs/bafybeichmigzcebanai4n7jjj2xsc2uwhe5dnluvngpo5legnezdbariru",
      "animation_url": null,
      "animation_original_url": null,
      "name": "Captain America Punk",
      "description": null,
      "external_link": null,
      "asset_contract": {
        "address": "0x238f65ef9231d86bd9bb2efdeaf4306fd69e2a89",
        "asset_contract_type": "non-fungible",
        "created_date": "2022-01-10T05:39:58.937703",
        "name": "CP Punks",
        "nft_version": "3.0",
        "opensea_version": null,
        "owner": 5078005,
        "schema_name": "ERC721",
        "symbol": "CP",
        "total_supply": "0",
        "description": null,
        "external_link": null,
        "image_url": null,
        "default_to_fiat": false,
        "dev_buyer_fee_basis_points": 0,
        "dev_seller_fee_basis_points": 0,
        "only_proxied_transfers": false,
        "opensea_buyer_fee_basis_points": 0,
        "opensea_seller_fee_basis_points": 250,
        "buyer_fee_basis_points": 0,
        "seller_fee_basis_points": 250,
        "payout_address": null
      },
      "permalink":
          "https://testnets.opensea.io/assets/0x238f65ef9231d86bd9bb2efdeaf4306fd69e2a89/3",
      "collection": {
        "banner_image_url": null,
        "chat_url": null,
        "created_date": "2022-01-10T05:45:36.347034",
        "default_to_fiat": false,
        "description": null,
        "dev_buyer_fee_basis_points": "0",
        "dev_seller_fee_basis_points": "0",
        "discord_url": null,
        "display_data": {"card_display_style": "contain", "images": []},
        "external_url": null,
        "featured": false,
        "featured_image_url": null,
        "hidden": false,
        "safelist_request_status": "not_requested",
        "image_url": null,
        "is_subject_to_whitelist": false,
        "large_image_url": null,
        "medium_username": null,
        "name": "CP Punks - axKIKWTaIf",
        "only_proxied_transfers": false,
        "opensea_buyer_fee_basis_points": "0",
        "opensea_seller_fee_basis_points": "250",
        "payout_address": null,
        "require_email": false,
        "short_description": null,
        "slug": "cp-punks-axkikwtaif",
        "telegram_url": null,
        "twitter_username": null,
        "instagram_username": null,
        "wiki_url": null
      },
      "decimals": 0,
      "token_metadata":
          "https://ipfs.io/ipfs/bafkreier3grdntrziqhcqa4ocbtd5potvjs7p5f6igjx3htfvpaurd5j5m",
      "owner": {
        "user": null,
        "profile_img_url":
            "https://storage.googleapis.com/opensea-static/opensea-profile/23.png",
        "address": "0xd3eb5c9f4a407470ef715c3f9d4538da666f6e17",
        "config": ""
      },
      "sell_orders": null,
      "creator": {
        "user": null,
        "profile_img_url":
            "https://storage.googleapis.com/opensea-static/opensea-profile/23.png",
        "address": "0xd3eb5c9f4a407470ef715c3f9d4538da666f6e17",
        "config": ""
      },
      "traits": [
        {
          "trait_type": "price",
          "value": "12",
          "display_type": null,
          "max_value": null,
          "trait_count": 2,
          "order": null
        }
      ],
      "last_sale": null,
      "top_bid": null,
      "listing_date": null,
      "is_presale": false,
      "transfer_fee_payment_token": null,
      "transfer_fee": null
    },
    {
      "id": 28806639,
      "token_id": "4",
      "num_sales": 0,
      "background_color": null,
      "image_url":
          "https://lh3.googleusercontent.com/WrmpbMJMKmGfjJRCu2b0Bp_Pk2iPZcuRXyqPj7p3-I19DKHlIluigjdiwsnUZA28ssIQcydOnYgD2f6Qra05gFMZHWuojV1JSbM",
      "image_preview_url":
          "https://lh3.googleusercontent.com/WrmpbMJMKmGfjJRCu2b0Bp_Pk2iPZcuRXyqPj7p3-I19DKHlIluigjdiwsnUZA28ssIQcydOnYgD2f6Qra05gFMZHWuojV1JSbM=s250",
      "image_thumbnail_url":
          "https://lh3.googleusercontent.com/WrmpbMJMKmGfjJRCu2b0Bp_Pk2iPZcuRXyqPj7p3-I19DKHlIluigjdiwsnUZA28ssIQcydOnYgD2f6Qra05gFMZHWuojV1JSbM=s128",
      "image_original_url":
          "https://ipfs.io/ipfs/bafybeibt2tj24qikiqiyw5a7lsp26qg4ryi3yyimh2z3d7m52r4ezcrhgi",
      "animation_url": null,
      "animation_original_url": null,
      "name": "Pirate King Punk",
      "description": null,
      "external_link": null,
      "asset_contract": {
        "address": "0x238f65ef9231d86bd9bb2efdeaf4306fd69e2a89",
        "asset_contract_type": "non-fungible",
        "created_date": "2022-01-10T05:39:58.937703",
        "name": "CP Punks",
        "nft_version": "3.0",
        "opensea_version": null,
        "owner": 5078005,
        "schema_name": "ERC721",
        "symbol": "CP",
        "total_supply": "0",
        "description": null,
        "external_link": null,
        "image_url": null,
        "default_to_fiat": false,
        "dev_buyer_fee_basis_points": 0,
        "dev_seller_fee_basis_points": 0,
        "only_proxied_transfers": false,
        "opensea_buyer_fee_basis_points": 0,
        "opensea_seller_fee_basis_points": 250,
        "buyer_fee_basis_points": 0,
        "seller_fee_basis_points": 250,
        "payout_address": null
      },
      "permalink":
          "https://testnets.opensea.io/assets/0x238f65ef9231d86bd9bb2efdeaf4306fd69e2a89/4",
      "collection": {
        "banner_image_url": null,
        "chat_url": null,
        "created_date": "2022-01-10T05:45:36.347034",
        "default_to_fiat": false,
        "description": null,
        "dev_buyer_fee_basis_points": "0",
        "dev_seller_fee_basis_points": "0",
        "discord_url": null,
        "display_data": {"card_display_style": "contain", "images": []},
        "external_url": null,
        "featured": false,
        "featured_image_url": null,
        "hidden": false,
        "safelist_request_status": "not_requested",
        "image_url": null,
        "is_subject_to_whitelist": false,
        "large_image_url": null,
        "medium_username": null,
        "name": "CP Punks - axKIKWTaIf",
        "only_proxied_transfers": false,
        "opensea_buyer_fee_basis_points": "0",
        "opensea_seller_fee_basis_points": "250",
        "payout_address": null,
        "require_email": false,
        "short_description": null,
        "slug": "cp-punks-axkikwtaif",
        "telegram_url": null,
        "twitter_username": null,
        "instagram_username": null,
        "wiki_url": null
      },
      "decimals": 0,
      "token_metadata":
          "https://ipfs.io/ipfs/bafkreiea2dg7f5555mor2tmjh5crs6engk2t2ozmn7vnlhtbgkphdqcora",
      "owner": {
        "user": null,
        "profile_img_url":
            "https://storage.googleapis.com/opensea-static/opensea-profile/23.png",
        "address": "0xd3eb5c9f4a407470ef715c3f9d4538da666f6e17",
        "config": ""
      },
      "sell_orders": null,
      "creator": {
        "user": null,
        "profile_img_url":
            "https://storage.googleapis.com/opensea-static/opensea-profile/23.png",
        "address": "0xd3eb5c9f4a407470ef715c3f9d4538da666f6e17",
        "config": ""
      },
      "traits": [
        {
          "trait_type": "price",
          "value": "33",
          "display_type": null,
          "max_value": null,
          "trait_count": 1,
          "order": null
        }
      ],
      "last_sale": null,
      "top_bid": null,
      "listing_date": null,
      "is_presale": false,
      "transfer_fee_payment_token": null,
      "transfer_fee": null
    },
    {
      "id": 28806731,
      "token_id": "5",
      "num_sales": 0,
      "background_color": null,
      "image_url":
          "https://lh3.googleusercontent.com/m-Ws730SPYfr1hhPi44UWd923AthhSYnetE8x32yJf1b4GPOTOwdsgK9yXN7naVm7Y884R7e7yTxzMjDGfwpZaRQmfgA4Zo5CXy_jg",
      "image_preview_url":
          "https://lh3.googleusercontent.com/m-Ws730SPYfr1hhPi44UWd923AthhSYnetE8x32yJf1b4GPOTOwdsgK9yXN7naVm7Y884R7e7yTxzMjDGfwpZaRQmfgA4Zo5CXy_jg=s250",
      "image_thumbnail_url":
          "https://lh3.googleusercontent.com/m-Ws730SPYfr1hhPi44UWd923AthhSYnetE8x32yJf1b4GPOTOwdsgK9yXN7naVm7Y884R7e7yTxzMjDGfwpZaRQmfgA4Zo5CXy_jg=s128",
      "image_original_url":
          "https://ipfs.io/ipfs/bafybeiedqim46toomijrnua3xp45yh7jhas5cwf3k276yf3epyulrrrhey",
      "animation_url": null,
      "animation_original_url": null,
      "name": "Green Pumk",
      "description": null,
      "external_link": null,
      "asset_contract": {
        "address": "0x238f65ef9231d86bd9bb2efdeaf4306fd69e2a89",
        "asset_contract_type": "non-fungible",
        "created_date": "2022-01-10T05:39:58.937703",
        "name": "CP Punks",
        "nft_version": "3.0",
        "opensea_version": null,
        "owner": 5078005,
        "schema_name": "ERC721",
        "symbol": "CP",
        "total_supply": "0",
        "description": null,
        "external_link": null,
        "image_url": null,
        "default_to_fiat": false,
        "dev_buyer_fee_basis_points": 0,
        "dev_seller_fee_basis_points": 0,
        "only_proxied_transfers": false,
        "opensea_buyer_fee_basis_points": 0,
        "opensea_seller_fee_basis_points": 250,
        "buyer_fee_basis_points": 0,
        "seller_fee_basis_points": 250,
        "payout_address": null
      },
      "permalink":
          "https://testnets.opensea.io/assets/0x238f65ef9231d86bd9bb2efdeaf4306fd69e2a89/5",
      "collection": {
        "banner_image_url": null,
        "chat_url": null,
        "created_date": "2022-01-10T05:45:36.347034",
        "default_to_fiat": false,
        "description": null,
        "dev_buyer_fee_basis_points": "0",
        "dev_seller_fee_basis_points": "0",
        "discord_url": null,
        "display_data": {"card_display_style": "contain", "images": []},
        "external_url": null,
        "featured": false,
        "featured_image_url": null,
        "hidden": false,
        "safelist_request_status": "not_requested",
        "image_url": null,
        "is_subject_to_whitelist": false,
        "large_image_url": null,
        "medium_username": null,
        "name": "CP Punks - axKIKWTaIf",
        "only_proxied_transfers": false,
        "opensea_buyer_fee_basis_points": "0",
        "opensea_seller_fee_basis_points": "250",
        "payout_address": null,
        "require_email": false,
        "short_description": null,
        "slug": "cp-punks-axkikwtaif",
        "telegram_url": null,
        "twitter_username": null,
        "instagram_username": null,
        "wiki_url": null
      },
      "decimals": 0,
      "token_metadata":
          "https://ipfs.io/ipfs/bafkreigqgm42ja3z7l7btzn46tomvoc4tnegilgwyafihmrmatpigd7hkm",
      "owner": {
        "user": null,
        "profile_img_url":
            "https://storage.googleapis.com/opensea-static/opensea-profile/23.png",
        "address": "0xd3eb5c9f4a407470ef715c3f9d4538da666f6e17",
        "config": ""
      },
      "sell_orders": null,
      "creator": {
        "user": null,
        "profile_img_url":
            "https://storage.googleapis.com/opensea-static/opensea-profile/23.png",
        "address": "0xd3eb5c9f4a407470ef715c3f9d4538da666f6e17",
        "config": ""
      },
      "traits": [
        {
          "trait_type": "price",
          "value": "14",
          "display_type": null,
          "max_value": null,
          "trait_count": 1,
          "order": null
        }
      ],
      "last_sale": null,
      "top_bid": null,
      "listing_date": null,
      "is_presale": false,
      "transfer_fee_payment_token": null,
      "transfer_fee": null
    }
  ]
};
