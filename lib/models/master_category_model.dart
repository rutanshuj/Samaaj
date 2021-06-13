class MasterCategoryModel {

  final String id;
  final String name;

  MasterCategoryModel({
    this.id,
    this.name,
  });

  factory MasterCategoryModel.fromJSON(Map json) {
    return MasterCategoryModel(
      id: json["_id"],
      name: json["name"],
    );
  }

}