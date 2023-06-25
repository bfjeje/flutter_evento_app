import 'package:flutter/material.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  List<dynamic> atividades = List.empty(growable: true);
  Map<String, String> atividade = {"palestrante": "Paulo dos Santos",
  "titulo": "A informação na nação brasileira"};

  @override
  Widget build(BuildContext context) {
    atividades.add(atividade);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NOSSO EVENTO",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Scaffold(
        body: Column(
          children: [
            Flexible(
              flex: 0,
                child: Container(
              width: 0.0,
              height: 0.0,
            )),
            Flexible(
              flex: 1,
                child: atividades.isNotEmpty
                    ? _listagem(context)
                    : Container(
                        child: Center(child: Text("Não há atividades cadastradas!")),
                      ))
          ],
        ),
      ),
    );
  }

  Widget _listagem(BuildContext context) {
    atividades.add(atividade);
    return Card(
      child: CircleAvatar(
        backgroundColor: Colors.black26,
        radius: 25,
        child: Text("P", style: TextStyle(fontSize: 30.0, color: Colors.white),),
      ),
    );
  }
}
