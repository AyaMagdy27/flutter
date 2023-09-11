import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/d4.dart';
import 'package:myfirstflutterproject/desertmain.dart';
import 'package:myfirstflutterproject/home.dart';
import 'package:myfirstflutterproject/setting.dart';
import 'package:myfirstflutterproject/submit.dart';
import 'package:myfirstflutterproject/favourite.dart';
import 'package:myfirstflutterproject/cart.dart';
import 'package:myfirstflutterproject/desert1.dart';
import 'package:myfirstflutterproject/desert3.dart';
import 'package:myfirstflutterproject/desert2.dart';
import 'package:myfirstflutterproject/d5.dart';
import 'package:myfirstflutterproject/d6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Loginpage(),
        '/home': (context) => const MyScaffold(),
        '/submit': (context) => const Submitpage(),
        '/fav': (context) => const Myfavourites(),
        '/cart': (context) => const Mycart(),
        '/set': (context) => const Mysetting(),
        '/desert': (context) => const Desertmain(),
        '/desert1': (context) => const Desert(),
        '/desert2': (context) => const Desert2(),
        '/desert3': (context) => const Desert3(),
        '/desert4': (context) => const Desert4(),
        '/d5': (context) => const Desert5(),
        '/d6': (context) => const Desert6(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
    );
  }
}

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/backdround0.jpg'), fit: BoxFit.cover)),
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white12,
          width: 300,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                    child: Text("EASY RECIPES",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
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
                //PASSWORD
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
                          label: Text("  Password : ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white)),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white38))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    //LOGIN Button
                    ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Text(
                    " Login ",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                  ),
                ),
              ),
              //Sign in button
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/submit');
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 19, fontStyle: FontStyle.italic),
                  )),

              Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //FACEBOOK LOGIN
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        size: 50,
                      ),
                      color: Colors.blue[600],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                      child:
                          //MAIL LOGIN
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.mail_sharp,
                                size: 45,
                              ),
                              color: Colors.red[900]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
