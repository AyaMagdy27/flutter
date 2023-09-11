import 'package:flutter/material.dart';

class Desert4 extends StatelessWidget {
  const Desert4({super.key});

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
                image: AssetImage('images/d4.jpeg'),
                fit: BoxFit.cover)),
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
                      child: const Text("Chocolate Chip Cookies",
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
                                    " 20 min",
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
                                    " 15 min",
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
                                    " 10 - 12 ",
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
                          Text("1000 Reviews",
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
                          "Ingredients \n"
                          " ½ cup granulated sugar(100 g)\n "
                          " ¾ cup brown sugar(165 g), packed\n "
                          " 1 teaspoon salt\n"
                          " ½ cup unsalted butter(115 g), melted\n "
                          " 1 egg\n "
                          " 1 teaspoon vanilla extract\n"
                          " 1 ¼ cups all-purpose flour(155 g)\n"
                          " ½ teaspoon baking soda\n"
                          " 4 oz milk or semi-sweet chocolate chunks(110 g)\n"
                          " 4 oz dark chocolate chunk(110 g), or your preference ",
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
