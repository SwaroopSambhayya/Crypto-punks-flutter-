import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final GlobalKey scaffoldKey;
  const MyDrawer({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "lib/assets/cryptopunk-logo.jpg",
                    width: 80,
                    height: 80,
                  ),
                  Row(
                    children: [
                      CircularButton(
                        onTap: () {},
                        icon: Icons.wb_sunny,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CircularButton(
                          icon: Icons.close,
                          onTap: () {
                            Navigator.of(context).pop();
                          }),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const ListTile(
                minLeadingWidth: 20,
                title: Text(
                  "Market Place",
                  style: TextStyle(fontSize: 16),
                ),
                leading: Icon(
                  Icons.storefront,
                  color: Colors.black,
                ),
              ),
              const ListTile(
                minLeadingWidth: 20,
                title: Text(
                  "Drops",
                  style: TextStyle(fontSize: 16),
                ),
                leading: Icon(
                  Icons.location_on_outlined,
                  color: Colors.black,
                ),
              ),
              const ListTile(
                minLeadingWidth: 20,
                title: Text(
                  "Create",
                  style: TextStyle(fontSize: 16),
                ),
                leading: Icon(
                  Icons.brush_outlined,
                  color: Colors.black,
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: const EdgeInsets.all(
                    10,
                  ).copyWith(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [Color(0xff80DEEA), Color(0xff64b5f6)],
                    ),
                  ),
                  child: const Text(
                    "GET IN",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  final IconData icon;
  final Function() onTap;
  const CircularButton({Key? key, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
          )
        ], shape: BoxShape.circle),
        child: CircleAvatar(
          backgroundColor: Theme.of(context).cardColor,
          radius: 25,
          child: Icon(
            icon,
            color: Theme.of(context).textTheme.bodyText1?.color,
          ),
        ),
      ),
    );
  }
}
