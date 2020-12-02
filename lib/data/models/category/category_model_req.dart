class CategoryModelReqData {
  int perPage;
  int page;

  CategoryModelReqData({this.perPage, this.page});

  CategoryModelReqData.fromJson(Map<String, dynamic> json) {
    perPage = json['per_page'];
    page = json['page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['per_page'] = this.perPage;
    data['page'] = this.page;
    return data;
  }
}
