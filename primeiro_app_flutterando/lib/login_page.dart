import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  String email = " ";
  String password = " ";

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: Padding(
            padding: const EdgeInsets.all(35.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
                SizedBox(height: 80,
              child: TextField(
                onChanged: (text) {
                  email = text;
                },
                  keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                    labelText: 'E-Mail',
                    border: OutlineInputBorder()),
                      ),
                ),
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
               ElevatedButton(onPressed: () {}, child: Text('Entrar'),),
              ]),
          ),
        ),
      ),   
    );
  }
}