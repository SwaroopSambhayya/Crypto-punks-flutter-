import 'package:crypto_punk_clone/models/punk_data.dart';
import 'package:crypto_punk_clone/screens/home/model.dart';
import 'package:crypto_punk_clone/screens/punkDetails/view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CollectionCard extends StatelessWidget {
  final PunkData punkData;

  const CollectionCard({Key? key, required this.punkData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(0, 2),
                    color: Colors.black.withOpacity(0.15))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (MediaQuery.of(context).size.width > 1000)
                Expanded(
                  child: CustomCard(punkData: punkData),
                )
              else
                CustomCard(punkData: punkData),
              SizedBox(
                width: constraints.maxWidth,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        punkData.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        ".#" + punkData.id.toString(),
                        style: const TextStyle(
                          fontSize: 19,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image.asset(
                            "lib/assets/weth.png",
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            punkData.traits[0].value,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ));
    });
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.punkData,
  }) : super(key: key);

  final PunkData punkData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (MediaQuery.of(context).size.width < 1000) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PunkDetails(
                punkData: punkData,
              ),
            ),
          );
        } else {
          context.read<PunkModel>().setSelectedPunk(punkData);
        }
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width > 1000
            ? null
            : MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width > 1000
            ? null
            : MediaQuery.of(context).size.width,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Image.network(
            punkData.imageOriginalUrl,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(child: CircularProgressIndicator());
            },
            fit: BoxFit.cover,
            errorBuilder: (context, obj, stack) {
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
