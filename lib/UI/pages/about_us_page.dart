import 'package:Samaaj/utils/constants.dart';
import 'package:Samaaj/view_models/about_us_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {

  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailIDController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _vm = Provider.of<AboutUsPageViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.customPrimaryColor,
        title: Text(
          "About Us",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Constants.customPrimaryColor,
                  radius: MediaQuery.of(context).size.height * 0.15,
                  child: Image.asset(
                    Constants.founderImage,
                  )
                ),
              ),

              Text(
                "Suraj Jayasimha",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Constants.customPrimaryColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),



              Padding(
                padding: EdgeInsets.symmetric(horizontal: 150.0),
                child: Divider(
                  color: Constants.customPrimaryColor,
                ),
              ),

              Text(
                '''I am Suraj Jayasimha. I am 17 years old and I am studying in the 12 th grade at Dhirubhai Ambani
                International School. My school and my parents have always given me space and encouragement to
              do things that interests me. In the last few years, I have not only participated but have involved in
              many community service activities like collecting groceries, clothing etc and distributing to Sangli
              flood affected victims through “Indian Development Foundation, fund raising for providing shelter to
              the shelter less through “Habitat for Humanity”, Running marathons and raising funds for bereaved
                families of soldiers, etc. During the last few months I witnessed that all around me, due to COVID 19,
                small businesses such as vegetable and fruit vendors, and blue collared workers like plumbers,
                electricians, carpenters, maids, cooks, drivers, etc losing their jobs and source of livelihood. At the
              same time, I also witnessed that every household is always in need of some services or the other
              from the above-mentioned people. I thought that bringing these two together will be a way in which
              I will be able to contribute my little bit. This gave me an idea to develop a simple app which can be
              used easily on mobile phones and on PCs. Thus, my app ‘SAMAAJ’ took birth. This uses a very simple
              interphase and is very intuitive. SAMAAJ can be downloaded on Android as well as IOS. It will open
                up contact details such as name, profession, cell numbers, etc of so many small entrepreneurs and
              blue collared workers who would service your every domestic need. As I live in Chandivali, this app
                has captured details from the neighbourhood of Chandivali and Powai. The idea is to help people in
              need. Hope you will download this app and experience everything it has to offer. If you have
              feedback for me or the app, I can be reached on my mail surajjayasimha@gmail.com OR on my cell
              phone 9769010998. Hope you will like my creation. Thank you.''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Constants.customPrimaryColor,
                  fontSize: 16.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 150.0),
                child: Divider(
                  color: Constants.customPrimaryColor,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Text(
                  "Get In Touch",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Constants.customPrimaryColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

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

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.0),
                child: _vm.isLoading ?
                Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Constants.customPrimaryColor,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
