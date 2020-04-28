import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var mypicurl =
      'https://media-exp1.licdn.com/dms/image/C4D03AQEiL4w5rPHzpg/profile-displayphoto-shrink_200_200/0?e=1593648000&v=beta&t=4z4-bsQ1c8-8UybZWFAjj-JBM4Ct0RKeLX7xmovSU5Y';
  var maincolor = Colors.deepPurple;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: maincolor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(mypicurl),
                    backgroundColor: Colors.black,
                  ),
                  Text(
                    'Caio Alves Ferreira',
                    style: TextStyle(
                        fontFamily: 'Poiret',
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Mobile Developer'.toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'Saira',
                        color: maincolor.shade100,
                        letterSpacing: 2,
                        fontSize: 20.0,
                      )),
                  SizedBox(width: 150,child: Divider(color: maincolor.shade200,)),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                   child: ListTile(
                     leading: Icon(Icons.phone,color: maincolor.shade500,),
                     title: Text('+55 (11) 95418-9573',style: TextStyle(fontWeight: FontWeight.bold,color: maincolor.shade500),),
                   ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                   child: ListTile(
                     leading: Icon(Icons.email,color: maincolor.shade500,),
                     title: Text('caioalvesferreiracontato@gmail.com',style: TextStyle(fontWeight: FontWeight.bold,color: maincolor.shade500),),
                   ),
                  ),
                  Text('My projects'.toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'Saira',
                        color: maincolor.shade100,
                        letterSpacing: 2,
                        fontSize: 20.0,
                      )),
                  SizedBox(width: 150,child: Divider(color: maincolor.shade200,)),
                  Card(margin: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                           Center(
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text('Motiv',style: TextStyle(fontSize: 20),),
                             )
                           ),
                          SizedBox(child: Divider(color: maincolor.shade200,)),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage('https://lh3.googleusercontent.com/V5e3pj4m4WQKu4LgsWLxiPkRYQ1Pk2mckIlGYhJMwAMBq71WJ6j1ukWpxHI3wY9mjw=s180-rw'),
                            backgroundColor: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Seu espaço, onde suas ideias podem ser compartilhadas, este é o Motiv, onde suas palavras são levadas ao mundo, não importando de onde surgiu tal pensamento, podendo ser individual, uma citação, uma música, uma frase motivacional, uma frase romântica, aqui você pode mostrar ao mundo o que sente sem limite de linhas. Contando com um design intuitivo com inspiração em astronomia.Nós da inlustris trabalhamos com todo amor e dedicação para que o aplicativo fornecesse a melhor experiência possível para nossos usuários.Comparilhe frases com o mundo todo, inspire-se, motive-se, reflita, seja você com o Motiv!'),
                          )
                        ],
                      ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
