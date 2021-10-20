import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Question {
  var question = [
    "What is the color of the sky?"
  ];

  var options = [
    ["Red", "Green", "Blue", "Pink"]
  ];

  var answerValid = [
    "Blue"
  ];
}

var quiz = new Question();

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: ()async => false,
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: Container(
            margin: const EdgeInsets.only(top: 220),
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[

                Text(quiz.question[0],
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'rbold'
                  ),
                ),

                const Padding(padding: EdgeInsets.all(15)),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //Option 1
                    RaisedButton(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                        color: Colors.redAccent,
                        onPressed: (){
                          if(quiz.options[0][0] == quiz.answerValid[0]){
                              debugPrint("Good");
                          }
                          else{
                            showDialog(
                                context: context,
                                builder: (BuildContext context){
                                  return AlertDialog(
                                    title: const Text('Incorrect'),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: const [
                                          Text("Score: 0")
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      FlatButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('OK'))
                                    ],
                                  );
                                });
                          }
                        },

                      child: Text(quiz.options[0][0],
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                    ),

                    const Padding(padding: EdgeInsets.all(5)),

                    //Option 2
                    RaisedButton(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 72),
                      color: Colors.redAccent,
                      onPressed: (){
                        if(quiz.options[0][1] == quiz.answerValid[0]){
                          debugPrint("Good");
                        }
                        else{
                          showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return AlertDialog(
                                  title: const Text('Incorrect'),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: const [
                                        Text("Score: 0")
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('OK'))
                                  ],
                                );
                              });
                        }
                      },
                      child: Text(quiz.options[0][1],
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),
                      ),
                    ),

                    const Padding(padding: EdgeInsets.all(5)),
                    //Option 3
                    RaisedButton(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 79),
                      color: Colors.redAccent,
                      onPressed: (){
                        if(quiz.options[0][2] == quiz.answerValid[0]){
                          showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return AlertDialog(
                                  title: const Text('Correct'),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: const [
                                        Text("Score: 1")
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('OK'))
                                  ],
                                );
                              });
                        }
                        else{
                          debugPrint("Bad");
                        }
                      },
                      child: Text(quiz.options[0][2],
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),
                      ),
                    ),

                    const Padding(padding: EdgeInsets.all(5)),
                    //Option 4
                    RaisedButton(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 79),
                      color: Colors.redAccent,
                      onPressed: (){
                        if(quiz.options[0][3] == quiz.answerValid[0]){
                          debugPrint("Good");
                        }
                        else{
                          showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return AlertDialog(
                                  title: const Text('Incorrect'),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: const [
                                        Text("Score: 0")
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('OK'))
                                  ],
                                );
                              });
                        }
                      },
                      child: Text(quiz.options[0][3],
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),

                const Padding(padding: EdgeInsets.all(40)),
                //Log out
                RaisedButton(
                  color: Colors.grey,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 78),
                  textColor: Colors.white,
                  child: const Text(
                    'Log out',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'rbold'
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context){
                          return const Login();
                        }
                    ));
                  },
                )
              ],
            ),
          ),
      ),
    );
  }
}