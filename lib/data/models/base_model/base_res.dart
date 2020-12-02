import 'pagination.dart';

class BaseRes {
  int statusCode;
  String statusMessage;
  Links links;
  Meta meta;

  BaseRes({this.statusCode, this.statusMessage, this.links, this.meta});

  BaseRes.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    statusMessage = json['status_message'];
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_code'] = this.statusCode;
    data['status_message'] = this.statusMessage;
    if (this.links != null) {
      data['links'] = this.links.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta.toJson();
    }
    return data;
  }
}
