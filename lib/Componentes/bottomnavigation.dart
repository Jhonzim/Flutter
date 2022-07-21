import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:primeiro_aplicativo/Componentes/drawer.dart';

class EstadoNavigation{
  static EstadoNavigation tela = EstadoNavigation();
  int telaAberta = 1;
}

class EstateNavigation extends StatefulWidget {
  const EstateNavigation({Key? key}) : super(key: key);

  @override
  State<EstateNavigation> createState() => _EstateNavigationState();
}

class _EstateNavigationState extends State<EstateNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: EstadoNavigation.tela.telaAberta,
      items: const [
        BottomNavigationBarItem(
          label: 'Configurações',
          icon: Icon(Icons.settings),),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home'
          ),        
        BottomNavigationBarItem(
          label: 'Respostas',
          icon: Icon(Icons.question_answer))
        ],
        onTap: (inIndex){
          if(inIndex == 0){
            Navigator.pushNamed(context, '/');
            setState(() {
              EstadoNavigation.tela.telaAberta = inIndex;
            });
          }else if(inIndex == 1){
            Navigator.pushReplacementNamed(context, '/home');
            setState(() {
              EstadoNavigation.tela.telaAberta = inIndex;
            });
          }
          else{
            Navigator.pushReplacementNamed(context, '/form');
            setState(() {
              EstadoNavigation.tela.telaAberta = inIndex;
            });
          }
        },
        );
  }
}