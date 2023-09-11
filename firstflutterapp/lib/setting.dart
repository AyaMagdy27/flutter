import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/menu.dart';

class Mysetting extends StatelessWidget {
  const Mysetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Mydrawer(),
        body: const Center(child: Text("Setting")));
  }
}
