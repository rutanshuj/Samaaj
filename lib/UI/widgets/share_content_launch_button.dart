import 'package:Samaaj/utils/constants.dart';
import 'package:Samaaj/view_models/data_point_view_model.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareContentLaunchButton extends StatelessWidget {
  final DataPointViewModel dataPointViewModel;
  final bool isShop;

  const ShareContentLaunchButton({
    @required this.dataPointViewModel,
    @required this.isShop,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: Constants.customDetailsPageTextButtonStyle,
      onPressed: () {
        String content =
            isShop ? "${dataPointViewModel.fullName}\nAddress: ${dataPointViewModel.address ?? "N/A"}\nPhone Number: ${dataPointViewModel.mobile1 ?? "N/A"}\nStrong Timings: ${dataPointViewModel.openHours ?? "N/A"}"
                :
            "${dataPointViewModel.fullName}\nAddress: ${dataPointViewModel.location ?? "N/A"}\nPhone Number: ${dataPointViewModel.mobileNo ?? "N/A"}";
        Share.share(content, subject: "Check This Out At Samaaj App!");
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: [
            Icon(
              Icons.share_outlined,
              color: Constants.customPrimaryColor,
            ),
            Text(
              'Share',
              style: TextStyle(
                color: Constants.customPrimaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
