import 'package:Samaaj/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneCallLaunchButton extends StatelessWidget {

  final String phoneNumber;

  const PhoneCallLaunchButton({
    Key key,
    @required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: Constants.customDetailsPageTextButtonStyle,
      onPressed: () async{
        await launch('tel: $phoneNumber');
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: [
            Icon(
              Icons.phone_callback_outlined,
              color: Constants.customPrimaryColor,
            ),
            Text(
              'Call',
              style: TextStyle(
                color: Constants.customPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
