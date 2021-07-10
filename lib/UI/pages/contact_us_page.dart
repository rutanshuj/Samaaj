import 'package:Samaaj/utils/constants.dart';
import 'package:Samaaj/view_models/about_us_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class ContactUsPage extends StatelessWidget {
  ContactUsPage({Key key}) : super(key: key);

  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailIDController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _vm = Provider.of<ContactUsPageViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
        backgroundColor: Constants.customPrimaryColor,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.0),
        child: _vm.isLoading ?
        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          child: Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Constants.customPrimaryColor,
              ),
            ),
          ),
        )
            :
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Constants.customPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: (){
            _vm.validateForm(
              message: _messageController.text,
              phoneNumber: _phoneNumberController.text,
              email: _emailIDController.text,
              name: _nameController.text,
            ).whenComplete(() {

              if(_vm.isError.isEmpty) {
                Fluttertoast.showToast(msg: "Message Successfully Sent!");
                Navigator.pop(context);
              }
            });
          },
          child: Text(
            "Send",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Padding(
            //   padding: EdgeInsets.only(top: 12.0),
            //   child: Text(
            //     "Get In Touch",
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       color: Constants.customPrimaryColor,
            //       fontSize: 18.0,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    columnWidths: {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(3),
                    },
                    children: [
                      TableRow(
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(
                                color: Constants.customPrimaryColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      )
                                  )
                              ),
                            ),
                          ]
                      ),
                      TableRow(
                          children: [
                            SizedBox(height: 15,),
                            SizedBox(height: 15,),
                          ]
                      ),
                      TableRow(
                          children: [
                            Text(
                              "Message",
                              style: TextStyle(
                                color: Constants.customPrimaryColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField(
                              controller: _messageController,
                              minLines: 5,
                              maxLines: 25,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      )
                                  )
                              ),
                            ),
                          ]
                      ),
                      TableRow(
                          children: [
                            SizedBox(height: 15,),
                            SizedBox(height: 15,),
                          ]
                      ),
                      TableRow(
                          children: [
                            Text(
                              "Email ID",
                              style: TextStyle(
                                color: Constants.customPrimaryColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField(
                              controller: _emailIDController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      )
                                  )
                              ),
                            ),
                          ]
                      ),
                      TableRow(
                          children: [
                            SizedBox(height: 15,),
                            SizedBox(height: 15,),
                          ]
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Divider(
                          color: Constants.customPrimaryColor,
                          thickness: 1.0,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                        child: Text(
                          "OR",
                          style: TextStyle(
                            color: Constants.customPrimaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Divider(
                          color: Constants.customPrimaryColor,
                          thickness: 1.0,
                        ),
                      ),
                    ],
                  ),

                  Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    columnWidths: {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(3),
                    },
                    children: [
                      TableRow(
                          children: [
                            SizedBox(height: 15,),
                            SizedBox(height: 15,),
                          ]
                      ),

                      TableRow(
                          children: [
                            Text(
                              "Phone Number",
                              style: TextStyle(
                                color: Constants.customPrimaryColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.numberWithOptions(),
                              controller: _phoneNumberController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1.0,
                                      )
                                  )
                              ),
                            ),
                          ]
                      ),
                    ],
                  ),
                ],
              ),
            ),

            _vm.isError.isNotEmpty ?
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text(
                "*" + _vm.isError,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
                :
            Offstage(),

          ],
        ),
      ),
    );
  }
}
