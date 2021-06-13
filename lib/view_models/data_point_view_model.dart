import 'package:Samaaj/models/sub_category_data_point_model.dart';

class DataPointViewModel {

  SubCategoryDataPointModel _subCategoryDataPointModel;

  DataPointViewModel(SubCategoryDataPointModel subCategoryDataPointModel) {
    _subCategoryDataPointModel = subCategoryDataPointModel;
  }

  String get id => _subCategoryDataPointModel.id;
  String get fullName => _subCategoryDataPointModel.fullName;
  String get subCategory => _subCategoryDataPointModel.subCategory;
  String get address => _subCategoryDataPointModel.address;
  String get area => _subCategoryDataPointModel.area;
  String get landLine1 => _subCategoryDataPointModel.landline1;
  String get landLine2 => _subCategoryDataPointModel.landline2;
  num get mobile1 => _subCategoryDataPointModel.mobile1;
  num get mobile2 => _subCategoryDataPointModel.mobile2;
  String get openHours => _subCategoryDataPointModel.openHours;
  String get comments => _subCategoryDataPointModel.comments;

}