import 'package:Samaaj/UI/pages/about_us_page.dart';
import 'package:Samaaj/UI/widgets/category_display_widget.dart';
import 'package:Samaaj/UI/widgets/custom_search_box.dart';
import 'package:Samaaj/UI/widgets/debug_category_display_widget.dart';
import 'package:Samaaj/UI/widgets/search_category_display_widget.dart';
import 'package:Samaaj/utils/constants.dart';
import 'package:Samaaj/view_models/about_us_page_view_model.dart';
import 'package:Samaaj/view_models/master_category_list_view_model.dart';
import 'package:Samaaj/view_models/sub_category_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController _tagController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    final _vm = Provider.of<MasterCategoryListViewModel>(context, listen: false);
    _vm.getMasterCategoryList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _vm = Provider.of<MasterCategoryListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Constants.customPrimaryColor,
          title: Padding(
            padding: EdgeInsets.only(top: 4.0),
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Image.asset(
                    Constants.appLogo,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Samaaj'),
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSearchBox(
                  hintText: 'Search for Category',
                  onChanged: (String value) {
                    if(value.isNotEmpty) {
                      _vm.getCategoryDataBySearch(tag: value);
                    } else {
                      _vm.resetScreen();
                    }
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Choose Your Category',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          )),
      body: !_vm.isLoading ?
      Stack(
        children: [
          SingleChildScrollView(
            child: !_vm.isSearched ? Column(
              children: [
                ListView.builder(
                  itemCount: _vm.masterCategoryList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ChangeNotifierProvider(
                      create: (context) {
                        return SubCategoryListViewModel();
                      },
                      builder: (context, snapshot) {
                        return CategoryDisplayWidget(
                          masterCategoryViewModel: _vm.masterCategoryList[index],
                        );
                      }
                    );
                  },
                ),

                ///This column is to keep the static content in the app
                ///When all the content is dynamic, remove this column.
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.stretch,
                //   children: [
                //     DebugCategoryDisplayWidget(
                //       title: 'People',
                //       categoryDetails: [
                //         {
                //           'type': 'vendor',
                //           'name': 'Vegetable Vendors',
                //           'assetSVGPath': 'assets/svg_icons/shop.svg',
                //         },
                //         {
                //           'type': 'vendor',
                //           'name': 'Dhobi',
                //           'assetSVGPath': 'assets/svg_icons/dhobi.svg',
                //         },
                //         {
                //           'type': 'vendor',
                //           'name': 'Presswala',
                //           'assetSVGPath':
                //           'assets/svg_icons/ironing-board.svg',
                //         },
                //         {
                //           'type': 'vendor',
                //           'name': 'Domestic Help',
                //           'assetSVGPath': 'assets/svg_icons/mop.svg',
                //         },
                //         {
                //           'type': 'vendor',
                //           'name': 'Drivers',
                //           'assetSVGPath': 'assets/svg_icons/driver.svg',
                //         },
                //         {
                //           'type': 'vendor',
                //           'name': 'Security Gaurds',
                //           'assetSVGPath': 'assets/svg_icons/policeman.svg',
                //         },
                //         {
                //           'type': 'vendor',
                //           'name': 'Plumbers',
                //           'assetSVGPath': 'assets/svg_icons/plumber.svg',
                //         },
                //         {
                //           'type': 'vendor',
                //           'name': 'Electricians',
                //           'assetSVGPath': 'assets/svg_icons/electrician.svg',
                //         },
                //       ],
                //     ),
                //     // DebugCategoryDisplayWidget(
                //     //   title: 'Events and Entertainment',
                //     //   categoryDetails: [
                //     //     {
                //     //       'type': 'vendor',
                //     //       'name': 'Dance Performers',
                //     //       'assetSVGPath': 'assets/svg_icons/dance.svg',
                //     //     },
                //     //     {
                //     //       'type': 'vendor',
                //     //       'name': 'Singers',
                //     //       'assetSVGPath': 'assets/svg_icons/singer.svg',
                //     //     },
                //     //     {
                //     //       'type': 'vendor',
                //     //       'name': 'Stand Up Comedians',
                //     //       'assetSVGPath':
                //     //       'assets/svg_icons/standup_comedian.svg',
                //     //     },
                //     //     {
                //     //       'type': 'vendor',
                //     //       'name': 'Anchors',
                //     //       'assetSVGPath': 'assets/svg_icons/anchors.svg',
                //     //     },
                //     //     {
                //     //       'type': 'vendor',
                //     //       'name': 'Magicians',
                //     //       'assetSVGPath': 'assets/svg_icons/magician.svg',
                //     //     },
                //     //     {
                //     //       'type': 'vendor',
                //     //       'name': 'Event Organizers',
                //     //       'assetSVGPath':
                //     //       'assets/svg_icons/event_organizers.svg',
                //     //     },
                //     //   ],
                //     // ),
                //   ],
                // ),
              ],
            )
                :
            _vm.searchResultantList.isNotEmpty ? ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _vm.searchResultantList.length,
              itemBuilder: (context, index) {
                return SearchCategoryDisplayWidget(
                  categoryData: _vm.searchResultantList[index],
                );
              },
            )
                :
            Center(
              child: Text(
                "No Matching Options Found!",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Constants.customPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      )
          :
      Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Constants.customPrimaryColor),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 5.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Constants.customPrimaryColor,
            elevation: 8.0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Icon(
                          Icons.refresh,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        onTap: () {
                          _vm.resetScreen();
                        },
                      ),
                      Text(
                        'Refresh',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Icon(
                          Icons.info_outline,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) {
                                    return ChangeNotifierProvider(
                                      create: (context) {
                                        return AboutUsPageViewModel();
                                      },
                                      builder: (context, _) {
                                        return AboutUsPage();
                                      },
                                    );
                                  }
                              )
                          );
                        },
                      ),
                      Text(
                        'About Us',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/*
Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CategoryDisplayWidget(
                  title: 'People',
                  categoryDetails: [
                    {
                      'type': 'vendor',
                      'name': 'Vegetable Vendors',
                      'assetSVGPath': 'assets/svg_icons/shop.svg',
                    },
                    {
                      'type': 'vendor',
                      'name': 'Dhobi',
                      'assetSVGPath': 'assets/svg_icons/dhobi.svg',
                    },
                    {
                      'type': 'vendor',
                      'name': 'Presswala',
                      'assetSVGPath':
                      'assets/svg_icons/ironing-board.svg',
                    },
                    {
                      'type': 'vendor',
                      'name': 'Domestic Help',
                      'assetSVGPath': 'assets/svg_icons/mop.svg',
                    },
                    {
                      'type': 'vendor',
                      'name': 'Drivers',
                      'assetSVGPath': 'assets/svg_icons/driver.svg',
                    },
                    {
                      'type': 'vendor',
                      'name': 'Security Gaurds',
                      'assetSVGPath': 'assets/svg_icons/policeman.svg',
                    },
                    {
                      'type': 'vendor',
                      'name': 'Plumbers',
                      'assetSVGPath': 'assets/svg_icons/plumber.svg',
                    },
                    {
                      'type': 'vendor',
                      'name': 'Electricians',
                      'assetSVGPath': 'assets/svg_icons/electrician.svg',
                    },
                  ],
                ),
                CategoryDisplayWidget(
                  title: 'Brick and Mortar',
                  categoryDetails: [
                    {
                      'type': 'shop',
                      'name': 'Hospitals',
                      'assetSVGPath': 'assets/svg_icons/hospital.svg',
                    },
                    {
                      'type': 'shop',
                      'name': 'Pharmacies',
                      'assetSVGPath': 'assets/svg_icons/pharmacy.svg',
                    },
                    {
                      'type': 'shop',
                      'name': 'Hardware Shops',
                      'assetSVGPath':
                      'assets/svg_icons/hardware_shop.svg',
                    },
                    {
                      'type': 'shop',
                      'name': 'Groceries',
                      'assetSVGPath': 'assets/svg_icons/groceries.svg',
                    },
                    {
                      'type': 'shop',
                      'name': 'Stationery',
                      'assetSVGPath': 'assets/svg_icons/stationary.svg',
                    },
                  ],
                ),
                CategoryDisplayWidget(
                  title: 'Events and Entertainment',
                  categoryDetails: [
                    {
                      'type': 'vendor',
                      'name': 'Dance Performers',
                      'assetSVGPath': 'assets/svg_icons/dance.svg',
                    },
                    {
                      'type': 'vendor',
                      'name': 'Singers',
                      'assetSVGPath': 'assets/svg_icons/singer.svg',
                    },
                    {
                      'type': 'vendor',
                      'name': 'Stand Up Comedians',
                      'assetSVGPath':
                      'assets/svg_icons/standup_comedian.svg',
                    },
                    {
                      'type': 'vendor',
                      'name': 'Anchors',
                      'assetSVGPath': 'assets/svg_icons/anchors.svg',
                    },
                    {
                      'type': 'vendor',
                      'name': 'Magicians',
                      'assetSVGPath': 'assets/svg_icons/magician.svg',
                    },
                    {
                      'type': 'vendor',
                      'name': 'Event Organizers',
                      'assetSVGPath':
                      'assets/svg_icons/event_organizers.svg',
                    },
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 8.0,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Icon(
                                Icons.home_outlined,
                                size: 30.0,
                              ),
                              onTap: null,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Icon(
                                Icons.search,
                                size: 30.0,
                              ),
                              onTap: null,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Icon(
                                Icons.error_outline,
                                size: 30.0,
                              ),
                              onTap: null,
                            ),
                            Text(
                              'About Us',
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
*/