import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/menu.dart';

class Myfavourites extends StatelessWidget {
  const Myfavourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Mydrawer(),
        body: const Center(child: Text("Add your Favourites")));
  }
}
