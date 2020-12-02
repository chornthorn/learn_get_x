import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TranslateController extends GetxController {
  var _langList = <LangList>[].obs;
  List get langList => this._langList;

  var _selectIndex = 0.obs;

  int get selectIndex => this._selectIndex.value;

  void _onInit() {
    GetStorage box = new GetStorage();

    if (box.read('kh') != null) {}

    var lang = new LangList(name: 'english', id: 0);
    _langList.add(lang);
    var lang1 = new LangList(name: 'cambodia', id: 1);
    _langList.add(lang1);
    var lang2 = new LangList(name: 'thailand', id: 2);
    _langList.add(lang2);
  }

  void changeLanguage({selected, index}) {
    if (index == 0) {
      _selectIndex.value = selected ? index : index;
      var locale = Locale('en', 'US');
      Get.updateLocale(locale);
    }
    if (index == 1) {
      _selectIndex.value = selected ? index : index;

      var locale = Locale('km', 'KH');
      Get.updateLocale(locale);
    }
    if (index == 2) {
      _selectIndex.value = selected ? index : index;
      var locale = Locale('th', 'TH');
      Get.updateLocale(locale);
    }
  }

  @override
  void onInit() {
    this._onInit();
    super.onInit();
  }
}

class LangList {
  final String name;
  final int id;

  LangList({this.name, this.id});
}
