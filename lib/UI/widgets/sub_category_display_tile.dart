import 'package:Samaaj/UI/pages/people_page.dart';
import 'package:Samaaj/UI/pages/shop_page.dart';
import 'package:Samaaj/utils/constants.dart';
import 'package:Samaaj/view_models/data_point_list_view_model.dart';
import 'package:Samaaj/view_models/sub_category_view_model.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SubCategoryDisplayTile extends StatelessWidget {

  final SubCategoryViewModel subCategoryViewModel;
  const SubCategoryDisplayTile({this.subCategoryViewModel, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: InkWell(
          onTap: () {
            if (subCategoryViewModel.isShop) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ChangeNotifierProvider(
                      create: (context) {
                        return DataPointListViewModel();
                      },
                      builder: (context, child) {
                        return ShopPage(
                          subCategoryViewModel: subCategoryViewModel,
                        );
                      }
                  );
                }),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ChangeNotifierProvider(
                    create: (context) {
                      return DataPointListViewModel();
                    },
                    builder: (context, child) {
                      return PeoplePage(
                        subCategoryViewModel: subCategoryViewModel,
                      );
                    }
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

                WebsafeSvg.network(
                  subCategoryViewModel.iconURL,
                    placeholderBuilder: (context) {
                      return Container(
                        color: Constants.customPrimaryColor,
                      );
                    },
                ),

                // CachedNetworkImage(
                //   imageUrl: subCategoryViewModel.iconURL,
                //   placeholder: (context, child) {
                //     return Container(
                //       color: Constants.customPrimaryColor,
                //     );
                //   },
                //   errorWidget: (context, error,child) {
                //     return Container();
                //   },
                // ),

                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AutoSizeText(
                      "${subCategoryViewModel.name}",
                      // maxLines: 5,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
