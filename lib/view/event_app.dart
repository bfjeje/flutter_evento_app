import 'package:flutter/material.dart';
import 'package:flutter_evento_app/view/login_screen.dart';

class EventApp extends StatelessWidget {
  const EventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nosso Evento",
      home: LoginScreen(),
    );
  }
}
