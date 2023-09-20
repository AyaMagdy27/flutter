import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              //Search Icon
              padding: const EdgeInsets.all(10.0),
              child: SearchBar(
                leading: const Icon(Icons.search),
                trailing: [
                  IconButton(
                      //Clear Icon
                      onPressed: () {},
                      icon: const Icon(Icons.clear_rounded),
                      color: Colors.black),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_voice_sharp),
                    color: Colors.black,
                  ),
                  IconButton(
                      //Camara Icon
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt_sharp),
                      color: Colors.black),
                ],
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(250, 249, 246, 0.6)),
                elevation: MaterialStateProperty.all(20),
                hintText: " Search",
                overlayColor: MaterialStateProperty.all(Colors.indigo[200]),
                side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.indigo)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
