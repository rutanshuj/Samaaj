import 'package:flutter/material.dart';



class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 400,
            color: Colors.blue[500],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height:100,
                  width: 100,
                  child: new Image.asset("assets/images/Vegetables.png"),
                ),
                Text("Shop name", style: TextStyle(fontSize: 30),),
                Text("Area name",style: TextStyle(fontSize: 30),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Phone number:",style: TextStyle(fontSize: 30),),
                    Text("Number",style: TextStyle(fontSize: 30),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      height: 50,
                      width: 100
                    ),
                    Container(
                      color: Colors.red,
                        height: 50,
                        width: 100
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Center(child: Text("Details")),
                SizedBox(height:20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Store Timings", style: TextStyle(fontSize: 30),),
                    Text("Areas Served", style: TextStyle(fontSize: 30),),
                    Text("Accessibility", style: TextStyle(fontSize: 30),),
                    Text("Service options", style: TextStyle(fontSize: 30),),
                    Text("Payment options", style: TextStyle(fontSize: 30),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
