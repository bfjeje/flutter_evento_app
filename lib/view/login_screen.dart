import 'package:flutter/material.dart';
import 'package:flutter_evento_app/view/signup_screen.dart';

import 'event_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _senha = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NOSSO EVENTO",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            child: Form(
              child: Column(
                children: [
                  Flexible(
                      flex: 1,
                      child: Image.asset(
                        "assets/images/logo.png",
                        width: 150,
                        height: 150,
                      )),
                  Flexible(
                      child: TextFormField(
                    maxLength: 100,
                    decoration: InputDecoration(hintText: "E-mail"),
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) => val == "" ? val : null,
                  )),
                  Flexible(
                      child: TextFormField(
                    maxLength: 20,
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Senha"),
                    controller: _senha,
                    keyboardType: TextInputType.text,
                    validator: (val) => val == "" ? val : null,
                  )),
                  Flexible(
                      child: TextButton(
                    onPressed: () {
                      _login(context);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.deepPurple)),
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
                  Flexible(
                      child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => SignupScreen()));
                    },
                    child: Text("Cadastrar"),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _login(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => EventScreen()));
  }
}
