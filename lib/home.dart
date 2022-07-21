import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:primeiro_aplicativo/Componentes/bottomnavigation.dart';
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
            SizedBox(
              height: 50,
            ),

            Container(
              width: (MediaQuery.of(context).size.width)*0.85,
              
              child: Card(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "A ideia:",
                          textAlign: TextAlign.start, 
                          style: TextStyle(
                            fontSize: 25,
                            
                        ),),
                        SizedBox(
                          width: 300,
                          child: Text(
                            "A ideia do nosso projeto é criar um site que faça o contato entre os profissionais da área de informática com os usuarios e vice-versa"))
                      ]),
                  
                      Container(
                        width: 300,
                        height: 200,
                        child: Card(
                          //margin: EdgeInsets.all(20),
                          child: Image.asset("image/consertandoPC.PNG",fit: BoxFit.cover,),
                        ),
                      )
                  ],
                ),
              ),
            ),
            Container(
              width: (MediaQuery.of(context).size.width)*0.85,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 300,
                      height: 200,
                      child: Card(
                        shadowColor: Colors.black12,
                        color: Colors.grey[200],
                        margin: EdgeInsets.all(20),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                            child: Image.asset(
                                "image/consertandoPC.PNG",
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,),
                          ),
                        ),
                      ),
                      
                    ),
                    Container(
                      child: Column(children: [
                        Text("TITULO", style: TextStyle(
                          fontSize: 25,
                        ),),
                        Text("Subtitulo")
                      ]),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: (MediaQuery.of(context).size.width)*0.85,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      
                      child: Column(children: const [
                        Text("TITULO", style: TextStyle(
                          fontSize: 25,
                        ),),
                        Text("Subtitulo")
                      ]),
                    ),
                    Container(
                      width: 300,
                      height: 200,
                      child: Card(
                        shadowColor: Colors.black12,
                        color: Colors.grey[200],
                        margin: EdgeInsets.all(20),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                            child: Image.asset(
                                "image/consertandoPC.PNG",
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,),
                          ),
                        ),
                      ),
                      
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () { 
                  Navigator.of(context).pushNamedAndRemoveUntil('/form', (route) => false);
                  
               },
                child: const Text("ir para formulario"),
                ),
            ),
          ],
        ),

      ), 
      bottomNavigationBar: EstateNavigation(),        
    );
  }
}