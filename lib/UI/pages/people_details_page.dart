import 'package:Samaaj/UI/widgets/phone_call_launch_button.dart';
import 'package:Samaaj/UI/widgets/share_content_launch_button.dart';
import 'package:Samaaj/utils/constants.dart';
import 'package:Samaaj/view_models/data_point_details_view_model.dart';
import 'package:Samaaj/view_models/data_point_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PeopleDetailsPage extends StatefulWidget {

  final DataPointViewModel dataModelViewPoint;
  final String masterCategoryID;

  const PeopleDetailsPage({
    Key key,
    @required this.dataModelViewPoint,
    @required this.masterCategoryID,
  }) : super(key: key);

  @override
  _PeopleDetailsPageState createState() => _PeopleDetailsPageState();
}

class _PeopleDetailsPageState extends State<PeopleDetailsPage> {

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
                        '${_vm.datapointViewModel.location}',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Phone ${_vm.datapointViewModel.mobileNo ?? "Not Provided."}',
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
                          phoneNumber: _vm.datapointViewModel.mobileNo,
                        ),
                        Spacer(),
                        ShareContentLaunchButton(
                          isShop: false,
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
            child: SingleChildScrollView(
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
                            'Working Hours- ',
                            style: TextStyle(
                              color: Constants.customPrimaryColor,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            '${_vm.datapointViewModel.openHours ?? "9 AM to 7 PM"}',
                            style: TextStyle(
                              color: Constants.customPrimaryColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 5.0,),


                    SizedBox(height: 5.0,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gender- ',
                            style: TextStyle(
                              color: Constants.customPrimaryColor,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                              color: Constants.customPrimaryColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 5.0,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Languages- ',
                            style: TextStyle(
                              color: Constants.customPrimaryColor,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            'Hindi',
                            style: TextStyle(
                              color: Constants.customPrimaryColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Marathi',
                            style: TextStyle(
                              color: Constants.customPrimaryColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Gujarati',
                            style: TextStyle(
                              color: Constants.customPrimaryColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 5.0,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Payment Options- ',
                            style: TextStyle(
                              color: Constants.customPrimaryColor,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            'Cash',
                            style: TextStyle(
                              color: Constants.customPrimaryColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Debit Card',
                            style: TextStyle(
                              color: Constants.customPrimaryColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Credit Card',
                            style: TextStyle(
                              color: Constants.customPrimaryColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Google Pay, PhonePe, Amazon Pay',
                            style: TextStyle(
                              color: Constants.customPrimaryColor,
                              fontSize: 15.0,
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
