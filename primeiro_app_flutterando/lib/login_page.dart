import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:primeiro_app_flutterando/app_widget.dart';
import 'package:primeiro_app_flutterando/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  String email = "";
  String password = "";

  Widget _body() {
    return  SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: Padding(
            padding: const EdgeInsets.all(35.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/image/logo.png'),
                ),
              Container(height: 0,),
              SizedBox(height: 0),
              Card(
                child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 5,
                ),
                  child: Column(
                    children: [
                      TextField(
                  onChanged: (text) {
                    email = text;
                  },
                    keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                      labelText: 'E-Mail',
                      border: OutlineInputBorder()),
                        ),
                        SizedBox(width: double.infinity, height: 12,),
                      TextField(
                        onChanged: (text) {
                    password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder()),
                      ),
                      SizedBox(width: double.infinity, height: 10,),
                  ElevatedButton(onPressed: () {
                    if(email == "j" && password == "j"){
                      print('Entrou');
                    Navigator.of(context).pushReplacementNamed("/home");
                    } 
                    else {print('Login inválido');}
                  }, 
                  child: Container(
                    width: double.infinity,
                    child: Text('Entrar', textAlign: TextAlign.center,)
                    ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      );   
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Container(color: Colors.brown[200]),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/image/background.jpg',
            fit:BoxFit.cover,
            ),
          ),
          Container(color: Colors.black.withOpacity(0.2)),
            _body(),
        ],
      ),
    );
  }
}