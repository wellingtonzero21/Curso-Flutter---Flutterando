import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 100),
          child: Column(
            children: [
              Image.asset(
                "assets/logo.png",
                width: 150,
                height: 150,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 65,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: DropdownButton(
                          iconEnabledColor: Colors.amber,
                          iconSize: 30,
                          isExpanded: true,
                          underline: Container(
                            height: 1,
                            color: Colors.amber,
                          ),
                          items: const [
                            DropdownMenuItem(child: Text("Real")),
                            DropdownMenuItem(
                                value: "Dolar", child: Text("Dolar")),
                          ],
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: Text("CONVERTER")),
            ],
          ),
        ),
      ),
    );
  }
}
