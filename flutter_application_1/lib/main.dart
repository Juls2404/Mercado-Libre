import 'package:flutter_application_1/AdminUsers.dart';
import 'package:flutter_application_1/menu.dart';
import 'package:flutter_application_1/registro.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/registroUsuario.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion de noticias',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MenuUsers(),

    );
  }
}
