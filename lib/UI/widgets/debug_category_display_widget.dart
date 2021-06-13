import 'package:Samaaj/UI/pages/degub_shop_page.dart';
import 'package:Samaaj/UI/pages/people_page.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';


///THIS WIDGET IS ONLY FOR STATIC CONTENT.

class DebugCategoryDisplayWidget extends StatefulWidget {
  final String title;
  final List<Map> categoryDetails;

  DebugCategoryDisplayWidget({
    @required this.title,
    @required this.categoryDetails,
  });

  @override
  _DebugCategoryDisplayWidgetState createState() => _DebugCategoryDisplayWidgetState();
}

class _DebugCategoryDisplayWidgetState extends State<DebugCategoryDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            widget.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
              fontSize: 18.0,
            ),
          ),
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 2),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.categoryDetails.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: InkWell(
                  onTap: () {
                    if (widget.categoryDetails[index]['type'] == 'vendor') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return PeoplePage(
                            categoryType: widget.categoryDetails[index]['name'],
                          );
                        }),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return DebugShopPage(
                            categoryType: widget.categoryDetails[index]['name'],
                          );
                        }),
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WebsafeSvg.asset(
                          widget.categoryDetails[index]['assetSVGPath'],
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.categoryDetails[index]['name'],
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        Divider(
          thickness: 7.0,
          color: Colors.blue[900],
        ),
      ],
    );
  }
}
