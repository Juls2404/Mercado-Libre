import 'package:flutter/material.dart';

class MenuUsers extends StatefulWidget {
  const MenuUsers({super.key});

  @override
  State<MenuUsers> createState() => _MenuUsersState();
}

class _MenuUsersState extends State<MenuUsers> {
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors. lightBlue,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors. white)),
        title: Text(
            "Administrar usuarios",
            style:  TextStyle (color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            Image.network(
              "https://cdn-icons-png.flaticon.com/512/1535/1535024.png",
              width: 300,
              height: 300,
            ),
            SizedBox(height: 16.0,),
            ListTile(
              title: Text("Buscar usuario"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {}
            ),
            SizedBox(height: 16.0,),
            ListTile(
              title: Text("Usuarios"),
              leading: Icon(Icons.connect_without_contact_rounded),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {}
            ),
            SizedBox(height: 16.0,),
            ListTile(
              title: Text("Solicitudes"),
              leading: Icon(Icons.messenger_sharp),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {}
            ),
            SizedBox(height: 16.0,),
            ListTile(
              title: Text("Informes"),
              leading: Icon(Icons.info),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {}
            )
          ],
        ),
    );
  }
}
