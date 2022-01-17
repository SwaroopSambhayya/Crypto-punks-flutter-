import 'package:crypto_punk_clone/models/punk_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PunkDetails extends StatelessWidget {
  final PunkData punkData;
  const PunkDetails({Key? key, required this.punkData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                punkData.imageOriginalUrl,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  child: IconButton(
                    onPressed: () {
                      showMenu(
                          context: context,
                          position: RelativeRect.fromLTRB(
                              MediaQuery.of(context).size.width - 20,
                              10,
                              10,
                              10),
                          items: [
                            PopupMenuItem(
                              padding: EdgeInsets.all(0),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      punkData.owner!.profileImgUrl),
                                ),
                                title: Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        punkData.assetContract!.address
                                            .toString(),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Clipboard.setData(
                                          ClipboardData(
                                              text: punkData
                                                  .assetContract!.address),
                                        );
                                      },
                                      icon: Icon(Icons.copy),
                                    )
                                  ],
                                ),
                                subtitle: const Text(
                                  "@swaroopsambhayya",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ]);
                    },
                    icon: const Icon(
                      Icons.more_vert,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10).copyWith(bottom: 0),
            child: Text(
              punkData.name,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              ".#" + punkData.id.toString(),
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey.shade400),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: Row(
              children: [
                Image.asset(
                  "lib/assets/weth.png",
                  width: 28,
                  height: 28,
                ),
                Text(
                  punkData.traits[0].value,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2), shape: BoxShape.circle),
                  child: const FaIcon(FontAwesomeIcons.twitter, size: 30),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2), shape: BoxShape.circle),
                  child: const FaIcon(FontAwesomeIcons.instagram, size: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
