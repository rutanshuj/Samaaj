import 'package:Samaaj/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPage(),
    );
      //   appBar: MyHomePage(),
      // floatingActionButton: FloatingActionButton(onPressed: (){ Navigator.pop(context);}),
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  SearchBar searchBar;

  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor, String imageAsset) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      height: 70 * buttonHeight,
      width: 160,
      child: RaisedButton(
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
          side: BorderSide(
              color: Colors.green, width: 1.0, style: BorderStyle.solid),
        ),
        padding: EdgeInsets.all(16.0),
        onPressed: () => null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Image.asset(imageAsset),
            Text(
              buttonText,
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.blueAccent,
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        title: new Text('My Page'),
        actions: [searchBar.getSearchAction(context)]);
  }

  MyPageState() {
    searchBar = new SearchBar(
        inBar: false,
        setState: setState,
        onSubmitted: print,
        buildDefaultAppBar: buildAppBar);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: searchBar.build(context),
      body:new ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 600,
              width: double.infinity,
              color: Colors.black12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 80,
                    child: Text("People",
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Vegetables", 1, Colors.blueGrey[200],
                          "assets/images/Vegetables.png"),
                      SizedBox(
                        height: 70,
                        width: 20,
                      ),
                      buildButton("Dhobi", 1, Colors.blueGrey[200],
                          "assets/images/Dhibi.png"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Presswala", 1, Colors.blueGrey[200],
                          "assets/images/Press.png"),
                      SizedBox(
                        height: 70,
                        width: 20,
                      ),
                      buildButton("Maids", 1, Colors.blueGrey[200],
                          "assets/images/Maid.png"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Drivers", 1, Colors.blueGrey[200],
                          "assets/images/Driver.png"),
                      SizedBox(
                        height: 70,
                        width: 20,
                      ),
                      buildButton("Security", 1, Colors.blueGrey[200],
                          "assets/images/Security.png"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Plumbers", 1, Colors.blueGrey[200],
                          "assets/images/Plumber.png"),
                      SizedBox(
                        height: 70,
                        width: 20,
                      ),
                      buildButton("Electrician", 1, Colors.blueGrey[200],
                          "assets/images/Electrician.png")
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 600,
              width: double.infinity,
              color: Colors.black12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 80,
                    child: Text("Brick and Motar",
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Hospitals", 1, Colors.blueGrey[200],
                          "assets/images/Hospital.png"),
                      SizedBox(
                        height: 100,
                        width: 20,
                      ),
                      buildButton("Pharmacy", 1, Colors.blueGrey[200],
                          "assets/images/Pharmacy.png"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Hardware", 1, Colors.blueGrey[200],
                          "assets/images/Hardware.png"),
                      SizedBox(
                        height: 100,
                        width: 20,
                      ),
                      buildButton("Groceries", 1, Colors.blueGrey[200],
                          "assets/images/Grocery.png"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Stationary", 1, Colors.blueGrey[200],
                          "assets/images/Stationary.png"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 600,
              width: double.infinity,
              color: Colors.black12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    child: Text("Events and Entertainment",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Dancers", 1, Colors.blueGrey[200],
                          "assets/images/Dance.png"),
                      SizedBox(
                        height: 100,
                        width: 20,
                      ),
                      buildButton("Singers", 1, Colors.blueGrey[200],
                          "assets/images/Singer.png"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Stand up", 1, Colors.blueGrey[200],
                          "assets/images/Comedy.png"),
                      SizedBox(
                        height: 100,
                        width: 20,
                      ),
                      buildButton("Organizers", 1, Colors.blueGrey[200],
                          "assets/images/manager.png"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Magicians", 1, Colors.blueGrey[200],
                          "assets/images/Magic.png"),
                      SizedBox(
                        height: 100,
                        width: 20,
                      ),
                      buildButton("Anchors", 1, Colors.blueGrey[200],
                          "assets/images/manager.png"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
