import 'package:flutter/material.dart';
import 'package:gemstone2/ui/homepages/home.dart';
import 'package:gemstone2/ui/homepages/parts.dart';
import 'package:get/get.dart';
class NavbarController extends GetxController{
  final RxInt  _index = 2.obs;
  List widgets = [
  Home(),
    pagepart(),
    Home(),
    Home(),
  ];
  RxInt get index => _index;

  void next(int index){
    _index.value = index;
  }


}