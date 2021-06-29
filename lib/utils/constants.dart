import 'package:flutter/material.dart';

class Constants {

  static const String SECURED_ENDPOINT = "samaaj-api.herokuapp.com";
  static const String getCategoryData = "/read";
  static const String getSearchCategoryData = "/search";
  static const String getDataPointDetails = "/read/details";
  static const String searchDataPoint = "/search";
  static const String postMessage = "/get-in-touch";

  static const String appLogo = "assets/images/samaaj_logo.png";

  static const String blueCollarMasterCategoryID = "60d39709d759fb47281515eb";

  static Color customPrimaryColor = Colors.blue[900];

  static ButtonStyle customDetailsPageTextButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  );


}