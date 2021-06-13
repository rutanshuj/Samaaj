class SubCategoryDataPointModel {

  final String id;
  final String fullName;
  final String subCategory;
  final String address;
  final String area;
  final String landline1;
  final String landline2;
  final num mobile1;
  final num mobile2;
  final String openHours;
  final String comments;

  SubCategoryDataPointModel({
    this.id,
    this.fullName,
    this.subCategory,
    this.address,
    this.area,
    this.landline1,
    this.landline2,
    this.mobile1,
    this.mobile2,
    this.openHours,
    this.comments,
  });


  factory SubCategoryDataPointModel.fromJSON(Map json) {
    return SubCategoryDataPointModel(
      id: json["_id"],
      fullName: json["fullName"],
      subCategory: json["subCategory"],
      address: json["address"],
      area: json["area"],
      landline1: json["landline1"],
      landline2: json["landline2"],
      mobile1: json["mobile1"],
      mobile2: json["mobile2"],
      openHours: json["openHours"],
      comments: json["comments"],
    );
  }

}