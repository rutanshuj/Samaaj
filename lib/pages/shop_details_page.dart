import 'package:flutter/material.dart';

class ShopDetailsPage extends StatefulWidget {
  @override
  _ShopDetailsPageState createState() => _ShopDetailsPageState();
}

class _ShopDetailsPageState extends State<ShopDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue[900],
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start  ,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Shop Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Area Name',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Phone +91 9876543210',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        onPressed: (){},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone_callback_outlined,
                                color: Colors.blue[900],
                              ),
                              Text(
                                'Call',
                                style: TextStyle(
                                  color: Colors.blue[900],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      FlatButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        onPressed: (){},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.share_outlined,
                                color: Colors.blue[900],
                              ),
                              Text(
                                'Share',
                                style: TextStyle(
                                  color: Colors.blue[900],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Details',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Store Timings- ',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            '9 AM to 11 PM',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 5.0,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Areas Served- ',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 5.0,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Accessibility- ',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            'Wheelchair- accessible item',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 5.0,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Service Options- ',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            'In-Store shopping',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'In-Store Pickup',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Free Home Delivery',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 5.0,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Payment Options- ',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            'Cash',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Debit Card',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Credit Card',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Google Pay, PhonePe, Amazon Pay',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
