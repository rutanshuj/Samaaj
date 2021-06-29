import 'package:Samaaj/UI/pages/people_details_page.dart';
import 'package:Samaaj/UI/pages/shop_details_page.dart';
import 'package:Samaaj/UI/widgets/custom_search_box.dart';
import 'package:Samaaj/utils/constants.dart';
import 'package:Samaaj/view_models/data_point_details_view_model.dart';
import 'package:Samaaj/view_models/data_point_list_view_model.dart';
import 'package:Samaaj/view_models/sub_category_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PeoplePage extends StatefulWidget {
  final SubCategoryViewModel subCategoryViewModel;

  PeoplePage({
    @required this.subCategoryViewModel,
  });

  @override
  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {

  SubCategoryViewModel _subCategoryViewModel;
  TextEditingController _tagController = TextEditingController();

  @override
  void initState() {
    _subCategoryViewModel = widget.subCategoryViewModel;
    final _vm = Provider.of<DataPointListViewModel>(context, listen: false);
    _vm.getDataPointsList(
      masterCategoryID: _subCategoryViewModel.masterCategoryID,
      subCategoryID: _subCategoryViewModel.id,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _vm = Provider.of<DataPointListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.customPrimaryColor,
        title: Text(
          _subCategoryViewModel.name,
          style: TextStyle(color: Colors.white),
        ),
        bottom: PreferredSize(
          preferredSize:
          Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomSearchBox(
              hintText: 'Search for Store/Item',
              onChanged: (String value) {
                if (value.isNotEmpty) {
                  _vm.getDataPointsListBySearch(
                    subCategoryID: _subCategoryViewModel.id,
                    tag: value,
                  );
                } else {
                  _vm.resetScreen(
                    masterCategoryID: _subCategoryViewModel.masterCategoryID,
                    subCategoryID: _subCategoryViewModel.id,
                  );
                }
              },
            ),
          ),
        ),
      ),
      body: !_vm.isLoading ? Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${_vm.dataPointList.length} Vendors',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              _vm.dataPointList.isNotEmpty ? ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _vm.dataPointList.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3.0,
                    shadowColor: Colors.blue,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ChangeNotifierProvider(
                                create: (context) {
                                  return DataPointsDetailsViewModel();
                                },
                                builder: (context, child) {
                                  return PeopleDetailsPage(
                                    masterCategoryID: widget.subCategoryViewModel.masterCategoryID,
                                    dataModelViewPoint: _vm.dataPointList[index],
                                  );
                                }
                            );
                          }),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '${_vm.dataPointList[index].fullName}',
                                    style: TextStyle(
                                      color: Constants.customPrimaryColor,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    '${_subCategoryViewModel.name} \t \t ${_vm.dataPointList[index].location}',
                                    style: TextStyle(
                                      color: Constants.customPrimaryColor,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
                  :
              Center(
                child: Text(
                  "No Matching Options Found!",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Constants.customPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
          :
      Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            Constants.customPrimaryColor,
          ),
        ),
      ),
    );
  }
}
