import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page 2"),
      ),
        floatingActionButton: FloatingActionButton(onPressed: (){ Navigator.pop(context);}),
      body: Container(
        child: Center(
          child: Text("Page2",
          style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      )
    );
  }
}
