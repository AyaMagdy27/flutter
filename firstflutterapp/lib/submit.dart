import 'package:flutter/material.dart';

class Submitpage extends StatefulWidget {
  const Submitpage({super.key});

  @override
  State<Submitpage> createState() => _SubmitpageState();
}

class _SubmitpageState extends State<Submitpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/backdround0.jpg'),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white12,
            width: 400,
            height: 550,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                      child: Text("EASY RECIPES",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontStyle: FontStyle.italic))),
                ),
                Padding(
                  // USERNAME
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.rectangle,
                    ),
                    child: const TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "  User Name : ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                            ),
                            hintText: "  User Name",
                            hintStyle: TextStyle(color: Colors.white38))),
                  ),
                ),
                Padding(
                  // PhoneNumber
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.rectangle,
                    ),
                    child: const TextField(
                        decoration: InputDecoration(
                            label: Text("   Phone Number : ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white)),
                            hintText: "Phone Number",
                            hintStyle: TextStyle(color: Colors.white38))),
                  ),
                ),
                Padding(
                  //
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.rectangle,
                    ),
                    child: const TextField(
                        decoration: InputDecoration(
                            label: Text("  Mail : ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white)),
                            hintText: "Mail",
                            hintStyle: TextStyle(color: Colors.white38))),
                  ),
                ),
                Padding(
                  // password
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.rectangle,
                    ),
                    child: const TextField(
                        decoration: InputDecoration(
                            label: Text(" Enter Password ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white)),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white38))),
                  ),
                ),
                Padding(
                  //
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.rectangle,
                    ),
                    child: const TextField(
                        decoration: InputDecoration(
                            label: Text("  Enter Password again  ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white)),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white38))),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text(
                      " Submit ",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
