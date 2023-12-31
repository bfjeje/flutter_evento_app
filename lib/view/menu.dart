import 'package:flutter/material.dart';
import 'package:flutter_evento_app/view/event_screen.dart';
import 'package:flutter_evento_app/view/login_screen.dart';

import 'activity_screen.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      child: ListView(
        children: [
          _header("Bruno Ellerbach"),
          ListTile(
            title: Text("Agenda"),
            leading: Icon(Icons.today),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => EventScreen()));
            },
          ),
          ListTile(
            title: Text("Atividades"),
            leading: Icon(Icons.today),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ActivityScreen()));
            },
          ),
          ListTile(
            title: Text("Sair"),
            leading: Icon(Icons.exit_to_app),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
            },
          )
        ],
      ),
    ));
  }

  Widget _header(String nome) {
    return UserAccountsDrawerHeader(
      accountName: Text(nome),
      accountEmail: Text("ingbrunofernandez@gmail.com"),
      decoration: BoxDecoration(color: Colors.deepPurple),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 80,
        child: Text("B", style: TextStyle(fontSize: 40.0, color: Colors.black54),),
      ),
    );
  }
}
