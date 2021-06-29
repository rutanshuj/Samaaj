import 'package:Samaaj/models/sub_category_model.dart';
import 'package:Samaaj/utils/constants.dart';

class SubCategoryViewModel {

  SubCategoryModel _subCategoryModel;
  bool isShop = true;

  SubCategoryViewModel(SubCategoryModel subCategoryModel) {
    this._subCategoryModel = subCategoryModel;
    isShop = this._subCategoryModel.masterCategory == Constants.blueCollarMasterCategoryID ? false:true;
  }


  String get name => _subCategoryModel.name;
  String get id => _subCategoryModel.id;
  String get masterCategoryID => _subCategoryModel.masterCategory;
  String get iconURL => _subCategoryModel.iconURL;
}