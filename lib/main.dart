
import 'package:Samaaj/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:Samaaj/testapp.dart';
import 'package:Samaaj/page2.dart';
import 'package:Samaaj/screen.dart';
import 'package:Samaaj/screen2.dart';
import 'package:Samaaj/detailspage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Samaaj App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    child:
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: new ListView(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.white,
            alignment: Alignment.center,
            child:
            FlatButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: BorderSide(color: Colors.white, width: 1.0, style: BorderStyle.solid),
              ),
              padding: EdgeInsets.all(16.0),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder:(context){ return Screen();}),
                );
              },
              child: Text(
                "Screen",
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.white,
            alignment: Alignment.center,
            child:
            FlatButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: BorderSide(color: Colors.white, width: 1.0, style: BorderStyle.solid),
              ),
              padding: EdgeInsets.all(16.0),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder:(context){ return Screen2();}),
                );
              },
              child: Text(
                "Screen2",
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.white,
            alignment: Alignment.center,
            child:
                FlatButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      side: BorderSide(color: Colors.white, width: 1.0, style: BorderStyle.solid),
                    ),
                    padding: EdgeInsets.all(16.0),
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(
                          builder:(context){ return Page1();}),
                      );
                    },
                    child: Text(
                      "Page1",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                ),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.white,
            alignment: Alignment.center,
            child:
            FlatButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: BorderSide(color: Colors.white, width: 1.0, style: BorderStyle.solid),
              ),
              padding: EdgeInsets.all(16.0),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder:(context){ return Page2();}),
                );
              },
              child: Text(
                "Page2",
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.white,
            alignment: Alignment.center,
            child:
            FlatButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: BorderSide(color: Colors.white, width: 1.0, style: BorderStyle.solid),
              ),
              padding: EdgeInsets.all(16.0),
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder:(context){ return DetailsPage();}),
                );
              },
              child: Text(
                "Detailspage",
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          )

        ],
      ),
    );
  }
}
//
// class Page1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text("Page 1"),
//         ),
//         floatingActionButton: FloatingActionButton(onPressed: (){ Navigator.pop(context);}),
//         body: Container(
//           child: Center(
//             child: Text("Page1",
//                 style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold, color: Colors.black)
//             ),
//           ),
//         )
//     );
//   }
// }
// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text("Page 2"),
//         ),
//         floatingActionButton: FloatingActionButton(onPressed: (){ Navigator.pop(context);}),
//         body: Container(
//           child: Center(
//             child: Text("Page2",
//                 style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold, color: Colors.black)
//             ),
//           ),
//         )
//     );
//   }
// }

