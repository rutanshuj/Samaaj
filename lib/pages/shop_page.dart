import 'package:Samaaj/pages/shop_details_page.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {

  final String categoryType;

  ShopPage({@required this.categoryType});

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          widget.categoryType,
          style: TextStyle(
            color: Colors.white
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
          child: Center(
            child: Padding(
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
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '100 Stores',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 30,
                itemBuilder: (context, index){
                  return Card(
                    elevation: 3.0,
                    shadowColor: Colors.blue,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) {
                                return ShopDetailsPage();
                              }
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              height: 75,
                              width: 75,
                              color: Colors.blue.shade300,
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shop Name',
                                    style: TextStyle(
                                      color: Colors.blue.shade900,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(height: 15.0,),
                                  Text(
                                    '2.7km \t \t Area Name',
                                    style: TextStyle(
                                      color: Colors.blue.shade900,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
