import 'package:Samaaj/view_models/master_category_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'UI/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Samaaj App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
        create: (context){
          return MasterCategoryListViewModel();
        },
        builder: (context, snapshot) {
          return HomePage();
        }
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
