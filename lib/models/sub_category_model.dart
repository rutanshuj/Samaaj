class SubCategoryModel {

  final String id;
  final String name;
  final String masterCategory;
  final String iconURL;

  SubCategoryModel({
    this.id,
    this.name,
    this.masterCategory,
    this.iconURL,
  });

  factory SubCategoryModel.fromJSON(Map json) {
    return SubCategoryModel(
      id: json["_id"],
      name: json["name"],
      masterCategory: json["masterCategory"],
      iconURL: json["iconUrl"],
    );
  }



}