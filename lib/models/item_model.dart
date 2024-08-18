// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mobx/mobx.dart';

part 'item_model.g.dart';

class ItemModel = ItemModelBase with _$ItemModel;

abstract class ItemModelBase with Store {
  ItemModelBase(this._title, this._check);

  @readonly
  String _title;

  @action
  void setTitle(String value) => _title = value;

  @readonly
  bool _check;

  @action
  void setCheck(bool? value) => _check = value ?? false;
}
