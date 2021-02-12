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
              child: Text(
                'Address'
              ),
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
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.13),
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
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                        onPressed: (){},
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
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        )
      ),
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
                        },
                        {
                          'type': 'vendor',
                          'name': 'Dhobi',
                        },
                        {
                          'type': 'vendor',
                          'name': 'Presswala',
                        },
                        {
                          'type': 'vendor',
                          'name': 'Domestic Help',
                        },
                        {
                          'type': 'vendor',
                          'name': 'Drivers',
                        },
                        {
                          'type': 'vendor',
                          'name': 'Security Gaurds',
                        },
                        {
                          'type': 'vendor',
                          'name': 'Plumbers',
                        },
                        {
                          'type': 'vendor',
                          'name': 'Electricians',
                        },
                      ],
                    ),
                    CategoryDisplayWidget(
                      title: 'Brick and Mortar',
                      categoryDetails: [
                        {
                          'type': 'shop',
                          'name': 'Hospitals',
                        },
                        {
                          'type': 'shop',
                          'name': 'Pharmacies',
                        },
                        {
                          'type': 'shop',
                          'name': 'Hardware Shops',
                        },
                        {
                          'type': 'shop',
                          'name': 'Domestic Help',
                        },
                        {
                          'type': 'shop',
                          'name': 'Groceries',
                        },
                        {
                          'type': 'shop',
                          'name': 'Stationaries',
                        },
                      ],
                    ),
                    CategoryDisplayWidget(
                      title: 'Events and Entertainment',
                      categoryDetails: [
                        {
                          'type': 'vendor',
                          'name': 'Dance Performers',
                        },
                        {
                          'type': 'vendor',
                          'name': 'Singers',
                        },
                        {
                          'type': 'vendor',
                          'name': 'Stand Up Comedians',
                        },
                        {
                          'type': 'vendor',
                          'name': 'Anchors',
                        },
                        {
                          'type': 'vendor',
                          'name': 'Magicians',
                        },
                        {
                          'type': 'vendor',
                          'name': 'Event Organizers',
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
                                  child:Icon(
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
        }
      ),

    );
  }
}
