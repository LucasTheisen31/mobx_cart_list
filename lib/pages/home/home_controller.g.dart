// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  Computed<List<ItemModel>>? _$getFilteredListComputed;

  @override
  List<ItemModel> get getFilteredList => (_$getFilteredListComputed ??=
          Computed<List<ItemModel>>(() => super.getFilteredList,
              name: 'HomeControllerBase.getFilteredList'))
      .value;
  Computed<int>? _$totalCheckedComputed;

  @override
  int get totalChecked =>
      (_$totalCheckedComputed ??= Computed<int>(() => super.totalChecked,
              name: 'HomeControllerBase.totalChecked'))
          .value;

  late final _$_filterAtom =
      Atom(name: 'HomeControllerBase._filter', context: context);

  String get filter {
    _$_filterAtom.reportRead();
    return super._filter;
  }

  @override
  String get _filter => filter;

  @override
  set _filter(String value) {
    _$_filterAtom.reportWrite(value, super._filter, () {
      super._filter = value;
    });
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  void addItem(ItemModel itemModel) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.addItem');
    try {
      return super.addItem(itemModel);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItem(ItemModel itemModel) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.removeItem');
    try {
      return super.removeItem(itemModel);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFilter(String value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setFilter');
    try {
      return super.setFilter(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
getFilteredList: ${getFilteredList},
totalChecked: ${totalChecked}
    ''';
  }
}
