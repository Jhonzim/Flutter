import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:primeiro_aplicativo/Componentes/drawer.dart';
import 'Classes/usuarios.dart';
import 'Componentes/tema.dart';

class TelaInicial extends StatefulWidget {
  TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  bool escuro = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CpDrawer(),
      appBar: AppBar(
        title: Text("Seja bem vindo ${Usuarios.cadastro.nome}"),
        actions: [
          InstanceTema(),
        ],
      ), 
      body:Container(
        child: Column(
          children: [

            Center(
              child: ElevatedButton(
                onPressed: () { 
                  Navigator.of(context).pushNamedAndRemoveUntil('/form', (route) => false);
                  
               },
                child: const Text("ir para formulario")),
            ),
          ],
        ),
      ),         
    );
  }
}