import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_aplicativo/Componentes/bottomnavigation.dart';
import 'package:primeiro_aplicativo/Componentes/tema.dart';
import '../Classes/usuarios.dart';

class CpDrawer extends StatefulWidget {
  const CpDrawer({Key? key}) : super(key: key);

  @override
  State<CpDrawer> createState() => _CpDrawerState();
}

class _CpDrawerState extends State<CpDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: (MediaQuery.of(context).size.width)*0.7,
        child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserAccountsDrawerHeader(accountName: Text(Usuarios.cadastro.cadastrado() ? Usuarios.cadastro.nome : "Sem Usuario", style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),), accountEmail: Text(Usuarios.cadastro.cadastrado() ? Usuarios.cadastro.contato : "Realize o cadastro")),
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const Text("Configurações",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),                 
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      width: 40,
                      height: 40,
                      child: Card(
                        child: GestureDetector(
                          onTap: () {Navigator.pop(context);},
                          child: const Icon(Icons.settings)),
                      ),
                    ),
                  ),                 
                ],
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Row(children: [
                      Text("Modo escuro"),
                      SizedBox(width: 80,),
                      InstanceTema(),
                    ]),
                  )
                  
                ],
              )
            ],
          ),
        ),
      );
  }
}