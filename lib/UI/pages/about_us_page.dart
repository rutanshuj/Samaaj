import 'package:Samaaj/utils/constants.dart';
import 'package:flutter/material.dart';


class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {

  @override
  Widget build(BuildContext context) {

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
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(Constants.founderImage),
                        fit: BoxFit.contain
                    ),
                  ),
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
                'I am Suraj Jayasimha. I am 17 years old and I am studying in the 12th grade at '
                'Dhirubhai Ambani International School. During the last few months I witnessed that all around me, due '
                'to COVID 19, small businesses such as vegetable and fruit vendors, and blue collared workers '
                'like plumbers, electricians, carpenters, maids, cooks, drivers, etc losing their jobs and '
                'source of livelihood. This gave me an idea to develop a simple app which can be '
                'used easily on mobile phones and on PCs and people in need of these services can reach '
                'out to them directly. Thus, my app ‘SAMAAJ’ took birth. This uses a very simple interphase '
                'and is very intuitive. SAMAAJ can be downloaded on Android as well as IOS. '
                'As I live in Chandivali, this app has captured details from the neighbourhood of Chandivali '
                'and Powai. The idea is to help people in need. If you have feedback for me or the app, '
                'I can be reached on my mail surajjayasimha@gmail.com OR on my cell phone 9769010998. '
                'Hope you will like my creation. Thank you.',
                textAlign: TextAlign.left,
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
            ],
          ),
        ),
      ),
    );
  }
}
