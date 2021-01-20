import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Test Layout"),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: (){ Navigator.pop(context);}),
      body: ListView(
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
                  height: 100,
                  child: Text("Daily items",
                      style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                ),
                SizedBox(height: 20),
                GridView.count(
                  padding: const EdgeInsets.all(20),
                  primary: false,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/Vegetables.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Fruits", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Veggies", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("House items", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 20,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("furniture", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Stationary", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 20,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Supermarkets", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Hardware", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 20,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Miscellanious", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
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
                  child: Text("People",
                      style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("House cleaner", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 20,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Cook", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Car washer", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 20,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Plumber", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Electrition", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 20,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Carpenter", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Miscellanious", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
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
                  child: Text("Services",
                      style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Restaurants", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 20,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("cloth shops", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("foot wear", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 20,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Beauty parlour", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Tuitons", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 20,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      color: Colors.redAccent,
                      child: Row(
                        children: [
                          Container(
                            child: new Image.asset('assets/images/newyear.png'),
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 50,width: 10),
                          Container(
                            height: 50,
                            width: 75,
                            alignment: Alignment.center,
                            child: Text("Other classes", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        ],
                      ),
                    ),
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
