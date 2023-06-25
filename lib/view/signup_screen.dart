import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _nome = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _senha = TextEditingController();

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
                  decoration: InputDecoration(hintText: "Nome"),
                  controller: _nome,
                  keyboardType: TextInputType.name,
                  validator: (val) => val == "" ? val : null,
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
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.deepPurple)),
                  onPressed: () {},
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
