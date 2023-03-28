// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PageModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PageModel on _PageModelBase, Store {
  late final _$collectionsAtom =
      Atom(name: '_PageModelBase.collections', context: context);

  @override
  List<String> get collections {
    _$collectionsAtom.reportRead();
    return super.collections;
  }

  @override
  set collections(List<String> value) {
    _$collectionsAtom.reportWrite(value, super.collections, () {
      super.collections = value;
    });
  }

  late final _$detailsAtom =
      Atom(name: '_PageModelBase.details', context: context);

  @override
  List<Map<String, dynamic>> get details {
    _$detailsAtom.reportRead();
    return super.details;
  }

  @override
  set details(List<Map<String, dynamic>> value) {
    _$detailsAtom.reportWrite(value, super.details, () {
      super.details = value;
    });
  }

  late final _$_PageModelBaseActionController =
      ActionController(name: '_PageModelBase', context: context);

  @override
  dynamic setBrand({required List<String> collections}) {
    final _$actionInfo = _$_PageModelBaseActionController.startAction(
        name: '_PageModelBase.setBrand');
    try {
      return super.setBrand(collections: collections);
    } finally {
      _$_PageModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setProduct({required List<Map<String, dynamic>> details}) {
    final _$actionInfo = _$_PageModelBaseActionController.startAction(
        name: '_PageModelBase.setProduct');
    try {
      return super.setProduct(details: details);
    } finally {
      _$_PageModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTemp({required List<Map<String, dynamic>> temporary}) {
    final _$actionInfo = _$_PageModelBaseActionController.startAction(
        name: '_PageModelBase.setTemp');
    try {
      return super.setTemp(temporary: temporary);
    } finally {
      _$_PageModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
collections: ${collections},
details: ${details}
    ''';
  }
}
