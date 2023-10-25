import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {

    String email = "";
    String password = "";

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
                SizedBox(
                  width: 230,
                  height: 230,
                  child: Image.asset('assets/image/logo.png')
                  ),
                SizedBox(
                  child: TextField(onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                  labelText:"Email",
                  border: OutlineInputBorder()
                  ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  child: TextField(onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity, height: 10,
                  ),
                ElevatedButton(onPressed: () {
                  if(email == "a" && password == "a"){
                    print("entrou");
                  Navigator.pushNamed(context, "/home");
                  } else {
                    print("Login Invalido");
                  };
                  }, child: Text('Entrar')
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}