import 'package:Samaaj/UI/widgets/sub_category_display_tile.dart';
import 'package:Samaaj/view_models/sub_category_view_model.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {

  final int length;
  final List<SubCategoryViewModel> subCategoryViewModelList;

  const CustomGridView({
    Key key,
    @required this.length,
    @required this.subCategoryViewModelList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 5.0,
        childAspectRatio: 1.7,
      ),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount:length,
      itemBuilder: (context, index) {
        return SubCategoryDisplayTile(
          subCategoryViewModel: subCategoryViewModelList[index],
        );
      },
    );
  }
}
