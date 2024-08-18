import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_cart_list/models/item_model.dart';
import 'package:mobx_cart_list/pages/home/components/custom_alert_dialog.dart';
import 'package:mobx_cart_list/pages/home/components/item_tile.dart';
import 'package:mobx_cart_list/pages/home/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = HomeController();

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => CustomAlertDialog(
        savePressed: (ItemModel itemModel) {
          controller.addItem(itemModel);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: controller.setFilter,
          decoration: const InputDecoration(
            hintText: 'Pesquisar...',
            border: InputBorder.none,
          ),
        ),
        actions: [
          Observer(builder: (_) {
            return IconButton(
              icon: Text(
                controller.totalChecked.toString(),
              ),
              onPressed: null,
            );
          }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog(context);
        },
        child: const Icon(Icons.add),
      ),
      body: Observer(builder: (context) {
        return ListView.builder(
          itemCount: controller.getFilteredList.length,
          itemBuilder: (_, index) {
            final itemModel = controller.getFilteredList[index];
            return ItemTile(
              itemModel: itemModel,
              removeClicked: () {
                controller.removeItem(itemModel);
              },
            );
          },
        );
      }),
    );
  }
}
