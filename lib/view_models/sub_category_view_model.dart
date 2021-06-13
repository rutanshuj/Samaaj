import 'package:Samaaj/models/sub_category_model.dart';

class SubCategoryViewModel {

  SubCategoryModel _subCategoryModel;

  SubCategoryViewModel(SubCategoryModel subCategoryModel) {
    this._subCategoryModel = subCategoryModel;
  }

  String get name => _subCategoryModel.name;
  String get id => _subCategoryModel.id;
  String get masterCategoryID => _subCategoryModel.masterCategory;
  String get iconURL => _subCategoryModel.iconURL;
}