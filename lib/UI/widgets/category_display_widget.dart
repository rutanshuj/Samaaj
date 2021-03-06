import 'package:Samaaj/UI/widgets/custom_grid_view.dart';
import 'package:Samaaj/UI/widgets/sub_category_display_tile.dart';
import 'package:Samaaj/utils/constants.dart';
import 'package:Samaaj/view_models/master_category_view_model.dart';
import 'package:Samaaj/view_models/sub_category_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryDisplayWidget extends StatefulWidget {

  final MasterCategoryViewModel masterCategoryViewModel;
  final bool isFiltered;
  final List<String> filteredID;

  CategoryDisplayWidget({
    @required this.masterCategoryViewModel,
    this.isFiltered = false,
    this.filteredID,
  });

  @override
  _CategoryDisplayWidgetState createState() => _CategoryDisplayWidgetState();
}

class _CategoryDisplayWidgetState extends State<CategoryDisplayWidget> {

  MasterCategoryViewModel _masterCategoryViewModel;

  @override
  void initState() {
    _masterCategoryViewModel = widget.masterCategoryViewModel;
    final _vm = Provider.of<SubCategoryListViewModel>(context, listen: false);
    _vm.getSubCategory(masterCategoryID: _masterCategoryViewModel.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _vm = Provider.of<SubCategoryListViewModel>(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            _masterCategoryViewModel.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
              fontSize: 18.0,
            ),
          ),
        ),
        //_vm.subCategoryList.length
        //_vm.subCategoryList[index]
        !_vm.isLoading ? CustomGridView(
          length: _vm.subCategoryList.length,
          subCategoryViewModelList: _vm.subCategoryList,
        )
            :
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Constants.customPrimaryColor,
              ),
            ),
          ),
        ),
        Divider(
          thickness: 7.0,
          color: Constants.customPrimaryColor,
        ),
      ],
    );
  }
}

