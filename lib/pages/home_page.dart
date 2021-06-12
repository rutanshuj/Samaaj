import 'package:Samaaj/widgets/category_display_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Row(
            children: [
              Icon(
                Icons.location_on,
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Address'),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.person,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.13),
            child: Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.60,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search for Store/Item',
                              ),
                              onChanged: (String value) {
                                name = value;
                              },
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
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
      body: FutureBuilder(
          future: null,
          builder: (context, future) {
            return Stack(
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
            );
          }),
    );
  }
}
