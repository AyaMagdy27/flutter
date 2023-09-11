import 'package:flutter/material.dart';

class Desert extends StatelessWidget {
  const Desert({super.key});

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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_rounded),
            tooltip: "shopping cart",
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
              //Background photo
                image: AssetImage('images/desert1.jpg'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white38,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.indigo, width: 3),
                        borderRadius: BorderRadius.circular(6),
                        shape: BoxShape.rectangle,
                      ),
                      //Desert Name
                      child: const Text(" Strawberry Pavlova",
                          style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontSize: 40,
                          )),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.indigo, width: 3),
                            borderRadius: BorderRadius.circular(6),
                            shape: BoxShape.rectangle),
                        padding: const EdgeInsets.all(2),
                        child: Row(
                          //Icons row
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                //kitchen
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                //prep
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.kitchen,
                                      size: 30,
                                    ),
                                    color: Colors.black,
                                  ),
                                  const Text(
                                    "  PREP:",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                  const Text(
                                    " 25 min",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Column(
                                //timer
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      color: Colors.black,
                                      icon: const Icon(
                                        Icons.timer,
                                        size: 30,
                                      )),
                                  const Text(
                                    "  COOK:",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                  const Text(
                                    " 1 hr",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Column(
                                // Restaurant
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      color: Colors.black,
                                      icon: const Icon(
                                        Icons.restaurant,
                                        size: 30,
                                      )),
                                  const Text(
                                    " FEEDS:",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                  const Text(
                                    " 4 - 6 ",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ])),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.indigo, width: 3),
                        borderRadius: BorderRadius.circular(6),
                        shape: BoxShape.rectangle,
                      ),
                      //reviews
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //stars
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellowAccent),
                              Icon(Icons.star, color: Colors.yellowAccent),
                              Icon(Icons.star, color: Colors.yellowAccent),
                              Icon(Icons.star, color: Colors.yellowAccent),
                              Icon(Icons.star, color: Colors.black),
                            ],
                          ),
                          Text("700 Reviews",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Container(
                      //Ingredients
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.indigo, width: 3),
                        borderRadius: BorderRadius.circular(6),
                        shape: BoxShape.rectangle,
                      ),
                      child: const Text(
                          "Ingredients : \n"
                          " 6 large free-range egg whites \n"
                          " 300 g caster sugarPAVLOVA \n "
                          "400 g fresh strawberries and raspberries "
                          "\n 200 ml double cream \n "
                          "200 ml fat-free natural yoghurt "
                          "\n 2 tablespoons caster sugar "
                          "\n 1 vanilla "
                          "\n few sprigs of fresh mint  ",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
