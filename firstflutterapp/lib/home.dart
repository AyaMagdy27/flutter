import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/menu.dart';

class MyScaffold extends StatefulWidget {
  const MyScaffold({super.key});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Easy Recipes",
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),
          ),
        ),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        actions: [
          // navigator to shopping cart
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            icon: const Icon(Icons.shopping_cart),
            tooltip: "shopping cart",
          ),
        ],
      ),

      //navigator to Menu
      drawer: const Mydrawer(),

      body: Container(
        //Background Photo
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/backdround0.jpg'),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    //breakfast cover
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 190,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.indigo, width: 4),
                            borderRadius: BorderRadius.circular(3),
                            shape: BoxShape.rectangle,
                          ),
                          child: const Image(
                            image: AssetImage('images/breakfastcover.jpeg'),
                            height: 140,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            border: Border.all(color: Colors.indigo, width: 3),
                            borderRadius: BorderRadius.circular(6),
                            shape: BoxShape.rectangle,
                          ),
                          child: TextButton(
                            onPressed: () {
                            },
                            child: const Text("Breakfast Recipe",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    // lunch cover
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 190,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.indigo, width: 4),
                            borderRadius: BorderRadius.circular(3),
                            shape: BoxShape.rectangle,
                          ),
                          child: const Image(
                            image: AssetImage('images/lunchcover.jpeg'),
                            height: 140,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            border: Border.all(color: Colors.indigo, width: 3),
                            borderRadius: BorderRadius.circular(6),
                            shape: BoxShape.rectangle,
                          ),
                          child: TextButton( onPressed: (){

                          },
                            child:
                          const Text("Lunch Recipe",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    //diner cover
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 190,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.indigo, width: 4),
                            borderRadius: BorderRadius.circular(3),
                            shape: BoxShape.rectangle,
                          ),
                          child: const Image(
                            image: AssetImage('images/dinercover.jpg'),
                            height: 140,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            border: Border.all(color: Colors.indigo, width: 3),
                            borderRadius: BorderRadius.circular(6),
                            shape: BoxShape.rectangle,
                          ),
                          child: TextButton(onPressed: (){},
                            child: const Text("Diner Recipe",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    //Appetizer cover
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 190,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.indigo, width: 4),
                            borderRadius: BorderRadius.circular(3),
                            shape: BoxShape.rectangle,
                          ),
                          child: const Image(
                            image: AssetImage('images/appetizer recipes.jpeg'),
                            height: 140,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: 200,
                          height:45,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            border: Border.all(color: Colors.indigo, width: 3),
                            borderRadius: BorderRadius.circular(6),
                            shape: BoxShape.rectangle,
                          ),
                          child: TextButton(onPressed: (){},
                            child: const Text("Appetizers Recipe",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    //Healthy Cover
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 190,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.indigo, width: 4),
                            borderRadius: BorderRadius.circular(3),
                            shape: BoxShape.rectangle,
                          ),
                          child: const Image(
                            image: AssetImage('images/healthy.jpg'),
                            height: 140,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            border: Border.all(color: Colors.indigo, width: 3),
                            borderRadius: BorderRadius.circular(6),
                            shape: BoxShape.rectangle,
                          ),
                          child: TextButton( onPressed: (){},
                            child: const Text("Healthy Recipe",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    //Desert Cover
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 190,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.indigo, width: 4),
                            borderRadius: BorderRadius.circular(3),
                            shape: BoxShape.rectangle,
                          ),
                          child: const Image(
                            image: AssetImage('images/desertcover.jpeg'),
                            height: 140,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            border: Border.all(color: Colors.indigo, width: 3),
                            borderRadius: BorderRadius.circular(6),
                            shape: BoxShape.rectangle,
                          ),
                          child: TextButton( onPressed: (){
                            Navigator.pushNamed(context, '/desert');
                          },
                            child: const Text("Desert Recipe",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
