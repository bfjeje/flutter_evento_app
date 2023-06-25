import 'package:flutter/material.dart';

import 'menu.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  final bool _confirmada = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ATIVIDADES",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.check),
                  onPressed: () {},
                ),
                title: Text("Atividade 01"),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          _cadastrarAtividade();
        },
      ),
      drawer: Menu(),
    );
  }

  Future _cadastrarAtividade() {
    return showDialog(
        context: context,
        builder: (BuildContext context) => SimpleDialog(
              title: Text("Atividade"),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Titulo da palestra"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Palestrante"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Horário"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: FormField<bool>(
                    initialValue: _confirmada,
                    builder: (FormFieldState<bool> state) {
                      return CheckboxListTile(
                          value: state.value,
                          title: Text("Confirmada?"),
                          selected: _confirmada,
                          onChanged: state.didChange);
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Cancelar")),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "OK",
                          style: TextStyle(color: Colors.deepPurple),
                        )),
                  ],
                )
              ],
            ));
  }
}

//Criar tela do aplicativo com widgets de Menu e Listas
