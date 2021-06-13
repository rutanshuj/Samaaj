import 'package:Samaaj/models/sub_category_data_point_model.dart';
import 'package:Samaaj/view_models/data_point_view_model.dart';
import 'package:Samaaj/web_services/backend_web_services.dart';
import 'package:flutter/material.dart';

class DataPointsDetailsViewModel extends ChangeNotifier {

  BackendWebServices _backendWebServices = BackendWebServices();

  bool isLoading = true;
  DataPointViewModel datapointViewModel;

  Future<void> getDataPointDetails({
    String masterCategoryID,
    String dataPointID,
  }) async {
    this.isLoading = true;
    final result = await _backendWebServices.getDataPointDetails(
      dataPointID: dataPointID,
      masterCategoryID: masterCategoryID,
    );
    this.datapointViewModel = DataPointViewModel(result);
    this.isLoading = false;
    notifyListeners();
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