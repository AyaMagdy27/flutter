import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background-3338.jpg'),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white12,
              width: 300,
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Column(
                      children: [
                        Image.asset(
                          "images/pngegg (2).png",
                          fit: BoxFit.fill,
                          width: 140,
                          height: 150,
                        ),

                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle),
                      child: TextField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                            filled: true,
                            label: Text(
                              " UserName :",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                            ),
                            hintText: "  Enter your username",
                            hintStyle: TextStyle(color: Colors.white38)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              style: BorderStyle.solid, color: Colors.white),
                          shape: BoxShape.rectangle),
                      child: TextField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                            filled: true,
                            label: Text(
                              " PassWord :",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                            ),
                            hintText: "  Enter your password",
                            hintStyle: TextStyle(color: Colors.white38)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        //LOGIN Button
                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white24)),
                          onPressed: () {
                            _usernameController.clear();
                            _passwordController.clear();
                          },
                          child: const Text(
                            " Clear ",
                            style: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 20),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white24)),
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: const Text(
                            " Login ",
                            style: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
