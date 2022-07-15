import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tema extends ChangeNotifier{
  static Tema modo = Tema();
  bool ligado = false;

  trocaTema(){
    ligado = !ligado;
    notifyListeners();
  }
}
class InstanceTema extends StatefulWidget {
  String? variavel = "";
  InstanceTema({Key? key, this.variavel}) : super(key: key);

  @override
  State<InstanceTema> createState() => _InstanceTemaState();
}

class _InstanceTemaState extends State<InstanceTema> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(children: [
        Icon(Tema.modo.ligado ? Icons.dark_mode : Icons.light_mode),
        Switch(value: Tema.modo.ligado,onChanged: (value){
          Tema.modo.trocaTema();
        },
          activeColor: Colors.blue,)
      ],)
        
    );
  }
}