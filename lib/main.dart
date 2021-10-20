import 'package:flutter/material.dart';
import 'package:trivia_app/quizz.dart';

import 'colors.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Trivia",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginView()
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final name = TextEditingController();
  String nametxt = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
        backgroundColor: colorBlueBack,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
            child: TextField(
              controller: name,
              decoration: const InputDecoration(
                hintText: "Name",
              ),
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              child: RaisedButton(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                color: colorBlueButton,
                textColor: Colors.white,
                child: const Text(
                  'Let´s go!',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onPressed: (){

                  nametxt = name.text;

                  if(nametxt == ''){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: const Text('The item name cannot be empty!'),
                            content: SingleChildScrollView(
                                child: ListBody(
                                  children: const [
                                    Text('Please, introduce your name'),
                                  ],
                                )
                            ),
                            actions: [
                              FlatButton(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'))
                            ],
                          );
                        }
                    );
                  }else{

                    Navigator.of(context).push(MaterialPageRoute<Null>(
                      builder: (BuildContext context){
                        return Quiz();
                      }
                    ));
                  }

                  name.text = '';
                }
              ),
          ),
        ],
      )
    );
  }
}
