import 'package:imake_get_x/data/models/base_model/base_res.dart';

class CategoryModelRes extends BaseRes {
  List<CategoryModelResData> data;

  CategoryModelRes({this.data});

  CategoryModelRes.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    if (json['data'] != null) {
      data = new List<CategoryModelResData>();
      json['data'].forEach((v) {
        data.add(new CategoryModelResData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryModelResData {
  int id;
  String name;

  CategoryModelResData({this.id, this.name});

  CategoryModelResData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
