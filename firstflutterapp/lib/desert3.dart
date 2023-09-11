import 'package:flutter/material.dart';

class Desert3 extends StatelessWidget {
  const Desert3({super.key});

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
                image: AssetImage('images/desert3.jpg'),
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
                      child: const Text(" Frozen S'mores Cake ",
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
                                    " 40 min",
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
                                    " 13 hr",
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
                                    " 12 - 16 ",
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
                          Text("300 Reviews",
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
                          "Ingredients :\n"
                          " 10 cinnamon graham cracker squares\n"
                          " ⅔ cup sliced almonds, toasted\n"
                          " 1 tablespoon sugar\n"
                          " ¼ cup butter, melted\n"
                          " 1 quart (4 cups) coffee ice cream, softened \n "
                          "1 cup hot fudge-flavor ice cream topping\n"
                          " 1 quart (4 cups) dulce de leche ice cream, softened\n"
                          "17 ounce jar marshmallow creme\n"
                          "2 cup tiny marshmallows \n"
                          "½ cup miniature semisweet chocolate pieces\n",
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
