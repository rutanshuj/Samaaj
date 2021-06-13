import 'package:Samaaj/utils/constants.dart';
import 'package:Samaaj/view_models/sub_category_view_model.dart';
import 'package:flutter/material.dart';

import 'sub_category_display_tile.dart';

class SearchCategoryDisplayWidget extends StatelessWidget {

  final Map<String, List<SubCategoryViewModel>> categoryData;
  SearchCategoryDisplayWidget({
    @required this.categoryData,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            categoryData.keys.first.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
              fontSize: 18.0,
            ),
          ),
        ), GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 1.9),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: categoryData.values.first.length,
          itemBuilder: (context, index) {
            return SubCategoryDisplayTile(
              subCategoryViewModel: categoryData.values.first[index],
            );
          },
        ),

        Divider(
          thickness: 7.0,
          color: Constants.customPrimaryColor,
        ),
      ],
    );
  }
}
