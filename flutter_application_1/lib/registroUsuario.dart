import 'package:flutter/material.dart';

class RegistroUsuario extends StatefulWidget{
  const RegistroUsuario({super.key});

  @override
  State<RegistroUsuario> createState() => _RegistroUsuarioState();
  
}

class _RegistroUsuarioState extends State<RegistroUsuario>{
  final _formKey = GlobalKey<FormState>();
  String txtNombres="";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center
      (child: SingleChildScrollView(
        child: Form(key: _formKey, child: Column(
          children: [
            Image.network(
              "https://img.freepik.com/vector-premium/icono-logotipo-circulo-facebook-aplicacion-redes-sociales-aplicacion-red-marca-editorial-popular-ilustracion-vectorial_913857-373.jpg ",
              width: 100,
              height: 100,
            ),
            SizedBox(height: 16.0),
            Text(
              "Realizar el registro",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold ),
            ),
            SizedBox(height: 8.0,),
            Text("Crea tu cuenta"),
            SizedBox(height: 24.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Nombre Completo",
                prefixIcon: Icon(Icons.person_3_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0) ),
              ),
              validator: (value){
                if (value == null || value.isEmpty){
                  return "Ingrese nombre completo";
                }
                return null;
              },
              onSaved: (value){
                txtNombres = value!;
              },
            ),
            SizedBox(height: 24.0),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton(
                onPressed: (){
                  if (_formKey.currentState!.validate()){
                    _formKey.currentState!
                      .save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Se ha registrado con exito')),
                      );
                  }
                },
                child: Text("Inscribirse"),
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  )
                ),
              )
            )
          ],
        ))
      ) ,
      ),
    );
  }
}
