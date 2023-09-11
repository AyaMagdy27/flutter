import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/menu.dart';

class Mycart extends StatelessWidget {
  const Mycart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Mydrawer(),
        body: const Center(child: Text(" NO Items Added")));
  }
}
