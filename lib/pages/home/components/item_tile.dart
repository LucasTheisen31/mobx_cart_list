import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_cart_list/models/item_model.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({super.key, required this.itemModel, required this.removeClicked});

  final ItemModel itemModel;
  final VoidCallback removeClicked;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ListTile(
        title: Text(itemModel.title),
        leading: Checkbox(
          value: itemModel.check,
          onChanged: itemModel.setCheck,
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removeClicked,
        ),
      );
    });
  }
}
