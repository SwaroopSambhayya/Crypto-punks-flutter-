import 'package:crypto_punk_clone/models/punk_data.dart';
import 'package:crypto_punk_clone/screens/components/collection_card.dart';
import 'package:crypto_punk_clone/screens/components/drawer.dart';
import 'package:crypto_punk_clone/screens/home/model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey scaffoldKey = GlobalKey();
  PunkData? selectedPunk;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PunkModel(punkList: []),
        builder: (context, child) {
          return Scaffold(
            key: scaffoldKey,
            endDrawer: MyDrawer(scaffoldKey: scaffoldKey),
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0,
              iconTheme: Theme.of(context).iconTheme,
              title: Text(
                "Crypto Punks",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Theme.of(context).textTheme.bodyText1?.color),
              ),
            ),
            body: Consumer<PunkModel>(builder: (context, model, child) {
              return MediaQuery.of(context).size.width > 1000
                  ? WebView(
                      punkList: model.punkList,
                      selectedPunk: model.selectedPunk)
                  : MobileView(
                      punkList: model.punkList,
                    );
            }),
          );
        });
  }
}

class MobileView extends StatelessWidget {
  final List<PunkData> punkList;
  const MobileView({Key? key, required this.punkList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: punkList.length,
        itemBuilder: (context, index) {
          return CollectionCard(
            punkData: punkList[index],
          );
        });
  }
}

class WebView extends StatelessWidget {
  final List<PunkData> punkList;
  final PunkData? selectedPunk;
  const WebView({
    Key? key,
    required this.selectedPunk,
    required this.punkList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: context.read<PunkModel>().scrollController,
      children: [
        if (selectedPunk != null)
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    selectedPunk!.imageOriginalUrl,
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.width / 5,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.width / 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  selectedPunk!.name,
                                  style: const TextStyle(
                                      fontSize: 90,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  ".#" + selectedPunk!.id.toString(),
                                  style: TextStyle(
                                      fontSize: 80,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.grey[350]),
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        selectedPunk!.owner!.profileImgUrl),
                                  ),
                                  title: Text(selectedPunk!
                                      .assetContract!.address
                                      .toString()),
                                  subtitle: const Text(
                                    "@swaroopsambhayya",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 2),
                                        shape: BoxShape.circle),
                                    child: const FaIcon(
                                        FontAwesomeIcons.twitter,
                                        size: 30),
                                  ),
                                ],
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 2),
                                    shape: BoxShape.circle),
                                child: const FaIcon(FontAwesomeIcons.instagram,
                                    size: 30),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        const Divider(height: 5),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width / 4,
            ),
            itemCount: punkList.length,
            itemBuilder: (context, index) {
              return CollectionCard(
                punkData: punkList[index],
              );
            }),
      ],
    );
  }
}
