import 'package:Samaaj/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneCallLaunchButton extends StatelessWidget {

  final num phoneNumber;

  const PhoneCallLaunchButton({
    Key key,
    @required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: Constants.customDetailsPageTextButtonStyle,
      onPressed: () async{
        if (phoneNumber  != null) {
          await launch('tel: ${phoneNumber.toString()}');
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: [
            Icon(
              Icons.phone_callback_outlined,
              color: phoneNumber != null ? Constants.customPrimaryColor : Colors.grey,
            ),
            Text(
              'Call',
              style: TextStyle(
                color: phoneNumber != null ? Constants.customPrimaryColor : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
