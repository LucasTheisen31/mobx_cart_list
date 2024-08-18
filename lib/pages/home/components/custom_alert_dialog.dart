import 'package:flutter/material.dart';
import 'package:mobx_cart_list/models/item_model.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key, required this.savePressed});

  final void Function(ItemModel) savePressed;

  @override
  Widget build(BuildContext context) {
    var itemModel = ItemModel('', false);
    return AlertDialog(
      title: const Text("Adicionar item"),
      content: TextField(
        onChanged: itemModel.setTitle,
        decoration: const InputDecoration(
          label: Text('Nome do item'),
          border: OutlineInputBorder(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            savePressed(itemModel);
            Navigator.of(context).pop();
          },
          child: const Text('Salvar'),
        ),
      ],
    );
  }
}
