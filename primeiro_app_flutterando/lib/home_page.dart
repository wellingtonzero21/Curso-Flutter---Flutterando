import 'package:flutter/material.dart';
import 'package:primeiro_app_flutterando/app_controller.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Wellington"), 
              accountEmail:Text("exemplo@gmail.com"),
              currentAccountPicture: Image.asset('assets/image/logo.png'), //User Picture 
            ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Inicio'),
                subtitle: Text('Tela de início'),
                onTap: () {
                  print('home');
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Inicio'),
                subtitle: Text('Tela de início'),
                onTap: () {
                  print('home');
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Sair'),
                subtitle: Text('Tela de Login'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitchPratica()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Contador $counter"),
      Container(height: 25,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.black,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.black,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.black,
          ),
        ],
      ),
            ],   
        ),
      ),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:() {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitchPratica extends StatelessWidget {
  const CustomSwitchPratica({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: AppController.instance.isDarkTheme, onChanged: (value){
               AppController.instance.changeTheme();
               },);
  }
}