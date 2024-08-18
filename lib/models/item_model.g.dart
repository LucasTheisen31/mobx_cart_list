// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ItemModel on ItemModelBase, Store {
  late final _$_titleAtom =
      Atom(name: 'ItemModelBase._title', context: context);

  String get title {
    _$_titleAtom.reportRead();
    return super._title;
  }

  @override
  String get _title => title;

  @override
  set _title(String value) {
    _$_titleAtom.reportWrite(value, super._title, () {
      super._title = value;
    });
  }

  late final _$_checkAtom =
      Atom(name: 'ItemModelBase._check', context: context);

  bool get check {
    _$_checkAtom.reportRead();
    return super._check;
  }

  @override
  bool get _check => check;

  @override
  set _check(bool value) {
    _$_checkAtom.reportWrite(value, super._check, () {
      super._check = value;
    });
  }

  late final _$ItemModelBaseActionController =
      ActionController(name: 'ItemModelBase', context: context);

  @override
  void setTitle(String value) {
    final _$actionInfo = _$ItemModelBaseActionController.startAction(
        name: 'ItemModelBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCheck(bool? value) {
    final _$actionInfo = _$ItemModelBaseActionController.startAction(
        name: 'ItemModelBase.setCheck');
    try {
      return super.setCheck(value);
    } finally {
      _$ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
