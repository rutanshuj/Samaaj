import 'dart:convert';
import 'dart:io';
import 'package:Samaaj/models/master_category_model.dart';
import 'package:Samaaj/models/sub_category_data_point_model.dart';
import 'package:Samaaj/models/sub_category_model.dart';
import 'package:Samaaj/utils/constants.dart';
import 'package:http/http.dart';

class BackendWebServices {

  Future<List<MasterCategoryModel>> getMasterCategoryData() async{
    Uri _uri = Uri.https(Constants.SECURED_ENDPOINT, Constants.getCategoryData);
    print("Get MasterCategory Data: ${_uri.toString()}");
    Response _response = await get(
      _uri,
    );
    int statusCode = _response.statusCode;
    final jsonResponse = jsonDecode(_response.body);
    if(statusCode == 200 || statusCode == 201) {
      final Iterable results = jsonResponse;
      return results.map((json) => MasterCategoryModel.fromJSON(json)).toList();
    } else {
      print(jsonResponse.toString());
      throw Exception(jsonResponse.toString());
    }
  }

  Future<List<SubCategoryModel>> getSubCategoryData({
    String masterCategoryID,
  }) async {

    Map<String, String> queryParameters = {
      "masterCategoryId": masterCategoryID,
    };
    Uri _uri = Uri.https(Constants.SECURED_ENDPOINT, Constants.getCategoryData, queryParameters);
    print("Get SubCategory Data: ${_uri.toString()}");
    Response _response = await get(
      _uri,
    );
    int statusCode = _response.statusCode;
    final jsonResponse = jsonDecode(_response.body);
    if(statusCode == 200 || statusCode == 201) {
      final Iterable results = jsonResponse;
      return results.map((json) => SubCategoryModel.fromJSON(json)).toList();
    } else {
      print(jsonResponse.toString());
      throw Exception(jsonResponse.toString());
    }
  }


  Future<List<SubCategoryDataPointModel>> getDataPointData({
    String masterCategoryID,
    String subCategoryID,
  }) async {
    Map<String, String> queryParameters = {
      "masterCategoryId": masterCategoryID,
      "subCategoryId": subCategoryID,
    };
    Uri _uri = Uri.https(Constants.SECURED_ENDPOINT, Constants.getCategoryData, queryParameters);
    print("Get DataPoint Data: ${_uri.toString()}");
    Response _response = await get(
      _uri,
    );
    int statusCode = _response.statusCode;
    final jsonResponse = jsonDecode(_response.body);
    if(statusCode == 200 || statusCode == 201) {
      final Iterable results = jsonResponse;
      return results.map((json) => SubCategoryDataPointModel.fromJSON(json)).toList();
    } else {
      print(jsonResponse.toString());
      throw Exception(jsonResponse.toString());
    }
  }


  Future<SubCategoryDataPointModel> getDataPointDetails({
    String masterCategoryID,
    String dataPointID,
  }) async {
    Map<String, String> queryParameters = {
      "masterCategoryId": masterCategoryID,
      "dataPointId": dataPointID,
    };
    Uri _uri = Uri.https(Constants.SECURED_ENDPOINT, Constants.getDataPointDetails, queryParameters);
    Response _response = await get(
      _uri,
    );
    int statusCode = _response.statusCode;
    final jsonResponse = jsonDecode(_response.body);
    if(statusCode == 200 || statusCode == 201) {
      final Map result = jsonResponse;
      return SubCategoryDataPointModel.fromJSON(result);
    } else {
      print(jsonResponse.toString());
      throw Exception(jsonResponse.toString());
    }
  }

  Future<List<SubCategoryDataPointModel>> getDataPointDataBySearch({
    String tag,
    String subCategoryID,
  }) async {
    Map<String, String> queryParameters = {
      "tag": tag,
      "subCategoryId": subCategoryID,
    };
    Uri _uri = Uri.https(Constants.SECURED_ENDPOINT, Constants.searchDataPoint, queryParameters);
    print("Get DataPoint Data: ${_uri.toString()}");
    Response _response = await get(
      _uri,
    );
    int statusCode = _response.statusCode;
    final jsonResponse = jsonDecode(_response.body);
    if(statusCode == 200 || statusCode == 201) {
      final Iterable results = jsonResponse;
      return results.map((json) => SubCategoryDataPointModel.fromJSON(json)).toList();
    } else {
      print(jsonResponse.toString());
      throw Exception(jsonResponse.toString());
    }
  }


  Future<Map<String, List<SubCategoryModel>>> getCategoryDataBySearch({
    String tag,
  }) async {
    Map<String, String> queryParameters = {
      "tag": tag,
    };
    Uri _uri = Uri.https(Constants.SECURED_ENDPOINT, Constants.searchDataPoint, queryParameters);
    print("Get DataPoint Data: ${_uri.toString()}");
    Response _response = await get(
      _uri,
    );
    int statusCode = _response.statusCode;
    final jsonResponse = jsonDecode(_response.body);
    if(statusCode == 200 || statusCode == 201) {
      final Iterable results = jsonResponse;
      Map<String, List<SubCategoryModel>> reqData = {};
      results.forEach((data) {
        String masterCategoryID = data["masterCategory"]["name"].toString().trim();
        if(reqData.containsKey(masterCategoryID)) {
          reqData[masterCategoryID].add(
            SubCategoryModel(
              id: data["_id"],
              name: data["name"],
              masterCategory: data["masterCategory"]["_id"],
              iconURL: data["iconUrl"],
            )
          );
        } else {
          reqData[masterCategoryID] = [
            SubCategoryModel(
              id: data["_id"],
              name: data["name"],
              masterCategory: data["masterCategory"]["_id"],
              iconURL: data["iconUrl"],
            )
          ];
        }
      });
      return reqData;
    } else {
      print(jsonResponse.toString());
      throw Exception(jsonResponse.toString());
    }
  }

}