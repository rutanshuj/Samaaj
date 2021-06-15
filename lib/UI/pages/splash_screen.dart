import 'dart:async';

import 'package:Samaaj/UI/pages/home_page.dart';
import 'package:Samaaj/utils/constants.dart';
import 'package:Samaaj/view_models/master_category_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  var version;

  Future<String> getVersionNumber() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
          builder: (context) {
            return ChangeNotifierProvider(
                create: (context){
                  return MasterCategoryListViewModel();
                },
                builder: (context, snapshot) {
                  return HomePage();
                }
            );
          }
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Image.asset(Constants.appLogo),
            ),
            Expanded(
              flex: 1,
              child: FutureBuilder(
                future: getVersionNumber(),
                builder: (context, future) {
                  if(!future.hasData) {
                    return Container();
                  }
                  String _versionNumber = future.data.toString();
                  return Text(
                    "v $_versionNumber",
                    textAlign: TextAlign.center,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
