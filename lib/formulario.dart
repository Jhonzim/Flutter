import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_aplicativo/Classes/formrespostas.dart';
import 'package:primeiro_aplicativo/Componentes/drawer.dart';

import 'Componentes/tema.dart';

enum SingingCharacter { opt1, opt2, opt3 }
class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  bool valid = true;
  SingingCharacter? character = SingingCharacter.opt1;
  final TextEditingController textArea = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CpDrawer(),
        appBar: AppBar(  
          title: const Text("Form Search", style: TextStyle(),),
          actions: [
            InstanceTema(),
          ],
      ),  
        body: Card(
          //color: Color.fromARGB(255, 84, 146, 197),
          child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: const Text("Preencha o formulário",style: TextStyle(fontSize: 40),),
                ),
                    SizedBox(
                      width:(MediaQuery.of(context).size.width)*0.9,
                      child: Column(
                          children: [
                            Column(
                              children: [                          
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text("Se existisse um aplicativo que faz o contato entre o tecnico e você, usaria?",style: TextStyle(
                                        fontSize: 19,
                                      ),),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      child: ListTile(
                                        title: const Text("Sim"),
                                        leading: Radio(value: SingingCharacter.opt1, groupValue: character, onChanged: (SingingCharacter? value) => 
                                          setState(() {
                                            character = value;
                                          })),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                      child: ListTile(
                                        title: const Text("Não"),
                                        leading: Radio(value: SingingCharacter.opt2, groupValue: character, onChanged: (SingingCharacter? value) => 
                                          setState(() {
                                            character = value;
                                          })),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                      child: ListTile(
                                        title: const Text("Talvez"),
                                        leading: Radio(value: SingingCharacter.opt3, groupValue: character, onChanged: (SingingCharacter? value) => 
                                          setState(() {
                                            character = value;
                                          })),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ) ,
                            const SizedBox(
                              height: 50,
                            ),

                            //Text Area
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(padding: EdgeInsets.all(10),child: Text("Se existisse um aplicativo que faz o contato entre o tecnico e você, usaria?", style: TextStyle(fontSize: 19),)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 600,
                                          child: Card(
                                            
                                            child: TextField(
                                              controller: textArea,
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                                              ),
                                              maxLines: 4, )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 50,),

                          //Radios Button                        
                            Center(
                              child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: SizedBox(
                                  width: double.infinity,
                                  
                                  child:Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                      
                                      
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                          
                                          Padding(
                                            padding: customEdge(),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: const [
                                                Text("Você possui aparelhos eletronicos em sua casa?",style: TextStyle(  
                                                  fontSize: 20,
                                                ),),    
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: customEdge(),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                                Text("Você necessita de ajuda tecnica constantemente?",style: TextStyle(  
                                                  fontSize: 20,
                                                ),),      
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:customEdge(),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                                Text("E quando precisa, você acha essa ajuda fácil ou não?",
                                                style: TextStyle(  
                                                  fontSize: 20,
                                                ),),            
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: customEdge(),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: const [
                                                Text("Você possui aparelhos eletronicos em sua casa?",style: TextStyle(  
                                                  fontSize: 20,
                                                ),),         
                                              ],
                                            ),
                                          ),
                                        ],),
                                      
                                      SizedBox(width: 20,),
                                      Card(
                                        color:Color.fromARGB(131, 110, 109, 109),
                                        child: Column(
                                        children: [
                                          Checkbox(value: Respostas.resposta.box1, onChanged: (value){
                                            setState(() {
                                              Respostas.resposta.box1 = !Respostas.resposta.box1;
                                            });
                                          },),
                                          Checkbox(value: Respostas.resposta.box2, onChanged: (value){
                                            setState(() {
                                              Respostas.resposta.box2 = !Respostas.resposta.box2;
                                            });
                                          },),
                                          Checkbox(value: Respostas.resposta.box3, onChanged: (value){
                                              setState(() {
                                                Respostas.resposta.box3 = !Respostas.resposta.box3;
                                              });
                                            },), 
                                          Checkbox(value: Respostas.resposta.box4, onChanged: (value){
                                            setState(() {
                                              Respostas.resposta.box4 = !Respostas.resposta.box4;
                                            });
                                          },),
                                        ],
                                                                      ),
                                      ),
                                      
                                    
                                    ],),
                                  
                                ),
                              ),
                            ),
                            /*SizedBox(width: 600,
                                      child: ListTile(
                                        leading: Text("Se existisse um aplicativo que faz o contato",),
                                        trailing: Checkbox(value: Respostas.resposta.box1,onChanged: (value) => setState(() {
                                          Respostas.resposta.box1 = value!;
                                        }),),
                                      ),
                                      ),*/
                                                 
                        ]),
                      
                    ),
                Center(
                  child: valid ? null : Text('O campo de texto deve ser preenchido'),
                )
                
              ],
            
          ),
          
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(textArea.text.trim().isNotEmpty && textArea.text != null){
              Respostas.resposta.text = textArea.text; 
              Navigator.pushReplacementNamed(context, '/home');
              print(Respostas.resposta.text);
            }
            else{
              setState(() => valid = false);
            }
          },
          child: Icon(Icons.send),

        ),
      );
  }
}
//const Text("Se existisse um aplicativo que faz o contato entre o tecnico e você, usaria?",)

dynamic customEdge(){
  return const EdgeInsets.all(5);
}