import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'PageModel.g.dart';

class PageModel = _PageModelBase with _$PageModel;

abstract class _PageModelBase with Store{
  @observable
  List<String>collections=[];
  @observable
  List<Map<String,dynamic>>details=[{}];
  List<Map<String,dynamic>>temporary=[{}];

  @action
  setBrand({required List<String>collections})
  {
    this.collections=[];
    this.collections=collections;
  }

  @action
  setProduct({required List<Map<String,dynamic>>details })
  {
    this.details=[];
    this.details=details;
  }

  @action
  setTemp({required List<Map<String,dynamic>>temporary})
  {
    this.temporary=[];
    this.temporary=temporary;
  }
}