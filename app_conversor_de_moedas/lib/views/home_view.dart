import 'package:app_conversor_de_moedas/app/components/currency_box.dart';
import 'package:app_conversor_de_moedas/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeController homeController;
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController = HomeController(toText, fromText);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 20, top: 100),
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CurrencyBox(
                      selectedItem: homeController.toCurrency,
                      controller: toText,
                      items: homeController.currencies,
                      onChanged: (model) {
                        setState(() {});
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  CurrencyBox(
                      selectedItem: homeController.fromCurrency,
                      controller: fromText,
                      items: homeController.currencies,
                      onChanged: (model) {
                        setState(() {});
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text("CONVERTER")),
                ],
              ),
            ),
        ]),
      ),
    );
  }
}
