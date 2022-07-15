import 'package:flutter/material.dart';
import 'package:primeiro_aplicativo/formulario.dart';
import 'package:primeiro_aplicativo/home.dart';
import 'package:primeiro_aplicativo/Componentes/tema.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: Tema.modo, builder: (context, child){
      return MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: "App",
        theme: ThemeData(
          brightness: Tema.modo.ligado 
          ? Brightness.dark 
          : Brightness.light,
          primarySwatch: Colors.blue,
          ),
        routes: {
          '/':(context) => Login(),
          '/home':(context) => TelaInicial(),
          '/form':(context) => Formulario(),
        },
      );
    });
  }
}
