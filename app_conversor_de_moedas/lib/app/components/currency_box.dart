import 'package:app_conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final TextEditingController controller;
  final CurrencyModel? selectedItem; // Adicione o parâmetro selectedItem
  final void Function(CurrencyModel? model)? onChanged;

  CurrencyBox({
    Key? key,
    required this.items,
    required this.controller,
    required this.onChanged,
    this.selectedItem, // Defina o parâmetro selectedItem
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 65,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: DropdownButton<CurrencyModel>(
                iconEnabledColor: Colors.amber,
                iconSize: 30,
                isExpanded: true,
                underline: Container(
                  height: 1,
                  color: Colors.amber,
                ),
                value: selectedItem, // Defina o valor selecionado
                items: items.map((CurrencyModel e) {
                  return DropdownMenuItem<CurrencyModel>(
                    value: e, // Defina o valor como o elemento da lista
                    child: Text(e.name),
                  );
                }).toList(),
                onChanged: onChanged,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
