import 'package:mobx/mobx.dart';
import 'package:mobx_cart_list/models/item_model.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  ObservableList<ItemModel> listItems = [
    ItemModel('Item 1', true),
    ItemModel('Item 2', false),
  ].asObservable();

  @action
  void addItem(ItemModel itemModel) {
    listItems.add(itemModel);
  }

  @action
  void removeItem(ItemModel itemModel) {
    listItems.remove(itemModel);
  }

  @readonly
  String _filter = '';

  @action
  void setFilter(String value) => _filter = value;

  @computed
  List<ItemModel> get getFilteredList {
    if (_filter.isEmpty) {
      return listItems;
    }
    return listItems.where((item) => item.title.toLowerCase().contains(_filter.toLowerCase())).toList();
  }

  @computed
  int get totalChecked => getFilteredList.where((item) => item.check).length;
}
