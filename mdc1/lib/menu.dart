import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) => Container(
  padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
  color: Colors.indigo,
  child: Container(
    padding: const EdgeInsets.all(10),
    child: const Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('images/avtar.png'),
          backgroundColor: Colors.grey,
        ),
        SizedBox(height: 12),
        Text(
          "Aya Magdy",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        Text(
          "ayamagdy@gmail.com",
          style: TextStyle(fontSize: 18, color: Colors.white),
        )
      ],
    ),
  ),
);
Widget buildMenuItems(BuildContext context) => Container(
  padding: const EdgeInsets.all(20),
  child: Wrap(
    runSpacing: 16,
    children: [
      ListTile(
        leading: const Icon(Icons.home_outlined, color: Colors.black),
        title: const Text("Home" , style: TextStyle(fontSize: 18)),
        onTap: () {
          Navigator.pushNamed(context, '/home');
        },
      ),
      ListTile(
        leading: const Icon(Icons.favorite_border_sharp , color: Colors.black,),
        title: const Text("Favorites" , style: TextStyle(fontSize: 18),),
        onTap: () {
          Navigator.pushNamed(context, '/fav');
        },
      ),
      ListTile(
        leading: const Icon(Icons.settings_outlined, color: Colors.black),
        title: const Text("Settings" , style: TextStyle(fontSize: 18)),
        onTap: () {
          Navigator.pushNamed(context, '/set');
        },
      ),
      ListTile(
        leading: const Icon(Icons.logout, color: Colors.black),
        title: const Text("Logout" , style: TextStyle(fontSize: 18)),
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
      ),
    ],
  ),
);
