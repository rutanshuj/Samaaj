import 'package:Samaaj/UI/widgets/phone_call_launch_button.dart';
import 'package:Samaaj/UI/widgets/share_content_launch_button.dart';
import 'package:Samaaj/utils/constants.dart';
import 'package:Samaaj/view_models/data_point_details_view_model.dart';
import 'package:Samaaj/view_models/data_point_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopDetailsPage extends StatefulWidget {

  final DataPointViewModel dataModelViewPoint;
  final String masterCategoryID;

  const ShopDetailsPage({
    Key key,
    @required this.dataModelViewPoint,
    @required this.masterCategoryID,
  }) : super(key: key);

  @override
  _ShopDetailsPageState createState() => _ShopDetailsPageState();
}

class _ShopDetailsPageState extends State<ShopDetailsPage> {

  DataPointViewModel _dataModelViewPoint;

  @override
  void initState() {
    _dataModelViewPoint = widget.dataModelViewPoint;
    final _vm = Provider.of<DataPointsDetailsViewModel>(context, listen: false);
    _vm.getDataPointDetails(
      masterCategoryID: widget.masterCategoryID,
      dataPointID: _dataModelViewPoint.id,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _vm = Provider.of<DataPointsDetailsViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.customPrimaryColor,
        elevation: 0.0,
      ),
      body: !_vm.isLoading ? Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width,
            color: Constants.customPrimaryColor,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start  ,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${_vm.datapointViewModel.fullName}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '${_vm.datapointViewModel.area}',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Phone ${_vm.datapointViewModel.mobile1 ?? "Not Provided."}',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        PhoneCallLaunchButton(
                          phoneNumber: _vm.datapointViewModel.mobile1,
                        ),
                        Spacer(),
                        ShareContentLaunchButton(
                          isShop: true,
                          dataPointViewModel: _vm.datapointViewModel,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Details',
                      style: TextStyle(
                        color: Constants.customPrimaryColor,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Store Timings- ',
                          style: TextStyle(
                            color: Constants.customPrimaryColor,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          '${_vm.datapointViewModel.openHours ?? "Not Available"}',
                          style: TextStyle(
                            color: Constants.customPrimaryColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15.0,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Address- ',
                          style: TextStyle(
                            color: Constants.customPrimaryColor,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          '${_vm.datapointViewModel.address}',
                          style: TextStyle(
                            color: Constants.customPrimaryColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
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
