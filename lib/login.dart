import 'package:flutter/material.dart';
import 'package:primeiro_aplicativo/home.dart';
import 'Classes/usuarios.dart';
import 'Componentes/tema.dart';
import './Componentes/drawer.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController controllerNome = TextEditingController();
  final TextEditingController controllerContato = TextEditingController();
  final TextEditingController controllerCpf = TextEditingController();
  final TextEditingController controllerSenha = TextEditingController();
  bool ligado = false;
  String naoPreencheu = "";
  bool isEmpty(String v1,String v2,String v3){
    bool vazio = true;
    if(v1.isNotEmpty && v2.isNotEmpty && v3.isNotEmpty){
      vazio = false;
    }
    return vazio;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CpDrawer(),
      appBar: AppBar(  
        title: const Text("Form Search", style: TextStyle(),textAlign: TextAlign.center,),
        actions: [
          InstanceTema(),
          ],
      ),
      body: Container(
        padding: const EdgeInsets.all(80),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: const Text("Faça seu cadastro aqui", style: TextStyle(fontSize: 20,),),
          ),
          TextFormField(
            controller: controllerNome,
            decoration: const InputDecoration(
                hintText: "Nome completo", 
                labelText: "NOME",
                border: InputBorder.none, 
                icon: Icon(Icons.account_box))
          ),
          TextFormField(
            controller: controllerSenha,
            decoration: const InputDecoration(
                hintText: "Senha", 
                labelText: "SENHA",
                border:InputBorder.none, 
                icon: Icon(Icons.key))
          ),
          TextFormField(
            controller: controllerContato,
            decoration: const InputDecoration(
                hintText: "Email ou Telefone", 
                labelText: "CONTATO",
                border: InputBorder.none, 
                icon: Icon(Icons.add_call))
          ),
          TextFormField(
            controller: controllerCpf,
            decoration: const InputDecoration(
                hintText: "Informe seu CPF", 
                labelText: "CPF", 
                border: InputBorder.none, 
                icon: Icon(Icons.person))
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Tema.modo.ligado ? const Color.fromARGB(255, 12, 102, 175) : Colors.blue),
              ),
              onPressed: () { 
                bool result = isEmpty(controllerNome.text, controllerContato.text, controllerCpf.text);             
                if (!result){
                  showDialog(
                    context: context, 
                    builder: (context) => AlertDialog(
                      title: Text('Bem Vindo ${controllerNome.text}'),
                      content: Text("Deseja continuar/salvar?"),
                      actions: [
                        ElevatedButton(
                          onPressed: (){
                            Usuarios.cadastro.setter(controllerNome.text, controllerContato.text, controllerCpf.text, controllerSenha.text);
                            Navigator.pushReplacementNamed(context, '/home');
                          }, 
                          child: Text("Sim"),),
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context), 
                          child: Text("Não"))
                      ],
                    ));
                }
                else{
                  setState((){naoPreencheu = "Preencha os dados corretamente";});
                }
              }, 
              child: const Text("Cadastrar"))),

          Text(naoPreencheu),
          Card(
           child: Tema.modo.ligado ? Switch(value: ligado, onChanged: (value){setState((){ligado = value;});}) : Text(""),)
        ]),
    ),
    
    );
  }
}
//nome: controllerNome.text,contato: controllerContato.text,cpf: controllerCpf.text);