import 'package:Samaaj/view_models/master_category_view_model.dart';
import 'package:Samaaj/view_models/sub_category_view_model.dart';
import 'package:Samaaj/web_services/backend_web_services.dart';
import 'package:flutter/material.dart';

class MasterCategoryListViewModel extends ChangeNotifier {

  BackendWebServices _backendWebServices = BackendWebServices();

  List<MasterCategoryViewModel> masterCategoryList = [];
  List<Map<String, List<SubCategoryViewModel>>> searchResultantList = [];

  bool isLoading = true;
  bool isSearched = false;

  getMasterCategoryList() async {
    this.isLoading = true;
    this.isSearched = false;
    final result = await _backendWebServices.getMasterCategoryData();
    this.masterCategoryList = result.map((masterCategoryModel) => MasterCategoryViewModel(masterCategoryModel)).toList();
    this.isLoading = false;
    notifyListeners();
  }

  getCategoryDataBySearch({String tag}) async{

    List<Map<String, List<SubCategoryViewModel>>> _searchResultantList = [];
    this.isSearched = true;
    setLoading();
    final result = await _backendWebServices.getCategoryDataBySearch(tag: tag);

    result.forEach((key, value) {
      List<SubCategoryViewModel> _subCatViewModel = [];
      _subCatViewModel = value.map((e) => SubCategoryViewModel(e)).toList();
      Map<String, List<SubCategoryViewModel>> reqMap = {
        key: _subCatViewModel,
      };
      _searchResultantList.add(reqMap);
    });
    this.searchResultantList = _searchResultantList;
    cancelLoading();
    notifyListeners();
  }


  resetScreen() async{
    this.isSearched = false;
    setLoading();
    await getMasterCategoryList();
  }

  setLoading() {
    this.isLoading = true;
    notifyListeners();
  }

  cancelLoading() {
    this.isLoading = false;
    notifyListeners();
  }

}