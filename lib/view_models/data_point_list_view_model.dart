import 'package:Samaaj/view_models/data_point_view_model.dart';
import 'package:Samaaj/web_services/backend_web_services.dart';
import 'package:flutter/cupertino.dart';

class DataPointListViewModel with ChangeNotifier{

  BackendWebServices _backendWebServices = BackendWebServices();
  List<DataPointViewModel> dataPointList = [];
  bool isLoading = true;
  bool isSearch = false;

  Future<void> getDataPointsList({
    String masterCategoryID,
    String subCategoryID,
  }) async {
    this.isSearch = false;
    this.isLoading = true;
    final result = await _backendWebServices.getDataPointData(
      masterCategoryID: masterCategoryID,
      subCategoryID: subCategoryID,
    );
    this.dataPointList = result.map((subCategoryDataPointsModel) =>
        DataPointViewModel(subCategoryDataPointsModel)).toList();
    this.isLoading = false;
    notifyListeners();
  }

  Future<void> getDataPointsListBySearch({
    String tag,
    String subCategoryID,
  }) async {
    this.isSearch = true;
    setLoading();
    this.dataPointList.clear();
    final result = await _backendWebServices.getDataPointDataBySearch(
      tag: tag,
      subCategoryID: subCategoryID,
    );
    this.dataPointList = result.map((subCategoryDataPointsModel) =>
        DataPointViewModel(subCategoryDataPointsModel)).toList();
    this.isLoading = false;
    notifyListeners();
  }

  resetScreen({
    String masterCategoryID,
    String subCategoryID,
  }) async{
    this.isSearch = false;
    setLoading();
    await getDataPointsList(
        masterCategoryID: masterCategoryID,
        subCategoryID: subCategoryID,
    );
    cancelLoading();
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