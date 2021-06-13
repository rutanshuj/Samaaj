import 'package:Samaaj/models/master_category_model.dart';

class MasterCategoryViewModel {

  MasterCategoryModel _masterCategoryModel;

  MasterCategoryViewModel(MasterCategoryModel masterCategoryModel) {
    this._masterCategoryModel = masterCategoryModel;
  }

  String get id => _masterCategoryModel.id;
  String get name => _masterCategoryModel.name;

}