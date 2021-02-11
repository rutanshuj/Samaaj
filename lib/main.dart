// import 'package:flutter/material.dart';
//
// // void main() {
// //   runApp(MyApp());
// // }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//         // This makes the visual density adapt to the platform that you run
//         // the app on. For desktop platforms, the controls will be smaller and
//         // closer together (more dense) than on mobile platforms.
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   // int _counter = 0;
//   //
//   // void _incrementCounter() {
//   //   setState(() {
//   //     // This call to setState tells the Flutter framework that something has
//   //     // changed in this State, which causes it to rerun the build method below
//   //     // so that the display can reflect the updated values. If we changed
//   //     // _counter without calling setState(), then the build method would not be
//   //     // called again, and so nothing would appear to happen.
//   //     _counter++;
//   //   });
//   // }
//   //
//   // @override
//   Widget build(BuildContext context) {
//     child:
//     return Column(
//       children: [
//         Container(
//           height: 200,
//           width: 100,
//           alignment: Alignment.center,
//           color: Colors.white,
//           child: Text(
//             "Samaaj app",
//             style: TextStyle(color: Colors.blue),
//           ),
//         ),
//         Container(
//           height: 100,
//           width: 100,
//           alignment: Alignment.center,
//           color: Colors.white,
//           child: Text(
//             "Services",
//             style: TextStyle(color: Colors.blue),
//           ),
//         ),
//         Container(
//           height: 100,
//           width: 100,
//           alignment: Alignment.center,
//           color: Colors.white,
//           child: Text(
//             "Specialized services",
//             style: TextStyle(color: Colors.blue),
//           ),
//         ),
//         Container(
//           height: 100,
//           width: 100,
//           alignment: Alignment.center,
//           color: Colors.white,
//           child: Text(
//             "Restaurants and places of enteratainment",
//             style: TextStyle(color: Colors.blue),
//           ),
//         ),
//         Container(
//           height: 100,
//           width: 100,
//           alignment: Alignment.center,
//           color: Colors.white,
//           child: Text(
//             "Groceries",
//             style: TextStyle(color: Colors.blue),
//           ),
//         ),
//       ],
//     );
//     //   // This method is rerun every time setState is called, for instance as done
//     //   // by the _incrementCounter method above.
//     //   //
//     //   // The Flutter framework has been optimized to make rerunning build methods
//     //   // fast, so that you can just rebuild anything that needs updating rather
//     //   // than having to individually change instances of widgets.
//     //   return Scaffold(
//     //     appBar: AppBar(
//     //       // Here we take the value from the MyHomePage object that was created by
//     //       // the App.build method, and use it to set our appbar title.
//     //       title: Text(widget.title),
//     //     ),
//     //     body: Center(
//     //       // Center is a layout widget. It takes a single child and positions it
//     //       // in the middle of the parent.
//     //       child: Column(
//     //         // Column is also a layout widget. It takes a list of children and
//     //         // arranges them vertically. By default, it sizes itself to fit its
//     //         // children horizontally, and tries to be as tall as its parent.
//     //         //
//     //         // Invoke "debug painting" (press "p" in the console, choose the
//     //         // "Toggle Debug Paint" action from the Flutter Inspector in Android
//     //         // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//     //         // to see the wireframe for each widget.
//     //         //
//     //         // Column has various properties to control how it sizes itself and
//     //         // how it positions its children. Here we use mainAxisAlignment to
//     //         // center the children vertically; the main axis here is the vertical
//     //         // axis because Columns are vertical (the cross axis would be
//     //         // horizontal).
//     //         mainAxisAlignment: MainAxisAlignment.center,
//     //         children: <Widget>[
//     //           Text(
//     //             'You have pushed the button this many times:',
//     //           ),
//     //           Text(
//     //             '$_counter',
//     //             style: Theme.of(context).textTheme.headline4,
//     //           ),
//     //         ],
//     //       ),
//     //     ),
//     //     floatingActionButton: FloatingActionButton(
//     //       onPressed: _incrementCounter,
//     //       tooltip: 'Increment',
//     //       child: Icon(Icons.add),
//     //     ), // This trailing comma makes auto-formatting nicer for build methods.
//     //   );
//   }
// }

import 'package:flutter/material.dart';
import 'package:Samaaj/testapp.dart';
import 'package:Samaaj/page2.dart';
import 'package:Samaaj/screen.dart';
import 'package:Samaaj/screen2.dart';
import 'package:Samaaj/detailspage.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

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
      home: MyHomePage(),
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

