import 'package:Samaaj/utils/constants.dart';
import 'package:Samaaj/view_models/sub_category_view_model.dart';
import 'package:Samaaj/web_services/backend_web_services.dart';
import 'package:flutter/cupertino.dart';

class SubCategoryListViewModel extends ChangeNotifier{

  BackendWebServices _backendWebServices = BackendWebServices();
  List<SubCategoryViewModel> subCategoryList = [];
  bool isLoading = true;

  Future<void> getSubCategory({String masterCategoryID}) async {
    this.isLoading = true;
    final result = await _backendWebServices.getSubCategoryData(masterCategoryID: masterCategoryID);
    this.subCategoryList = result.map((subCategoryModel) => SubCategoryViewModel(subCategoryModel)).toList();
    this.isLoading = false;
    notifyListeners();
  }

  setLoading() {
    isLoading = true;
    notifyListeners();
  }

  cancelLoading() {
    isLoading = false;
    notifyListeners();
  }


}