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
      body:Column(
        children: <Widget>[
          Container(
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 200,
                      alignment: Alignment.center,
                      child: Text("Strawberry Pavalova", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                    ),
                    Container(
                        height: 50,
                        width: 200,
                        alignment: Alignment.center,
                        child: Text("Paragraph", style: TextStyle(fontSize: 20),)
                    ),
                    Container(
                      height: 80,
                      alignment: Alignment.center,
                      child: Row(

                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Colors.green[500]),
                          Icon(Icons.star, color: Colors.green[500]),
                          Icon(Icons.star, color: Colors.green[500]),
                          Icon(Icons.star_border, color: Colors.black),
                          Icon(Icons.star_border, color: Colors.black),
                          SizedBox(width: 20),
                          Text("170 rewievs")
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.kitchen, color: Colors.blue[600],),
                              Text("Prep", style: TextStyle(color: Colors.blue[400]),),
                              Text("25 mins", style: TextStyle(color: Colors.blue[400]),)
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.timer, color: Colors.blue[600],),
                              Text("Cook", style: TextStyle(color: Colors.blue[400]),),
                              Text("1 hr", style: TextStyle(color: Colors.blue[400]),)
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.restaurant, color: Colors.blue[600],),
                              Text("Feeds", style: TextStyle(color: Colors.blue[400]),),
                              Text("4-6", style: TextStyle(color: Colors.blue[400]),)
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  height: 100,
                  child: new Image.asset('assets/images/newyear.png'),
                ),
              ],
            ),
          ),
          starButton()
        ],
      )

    );
  }
}
class starButton extends StatefulWidget {
  @override
  _starButtonState createState() => _starButtonState();
}

class _starButtonState extends State<starButton> {
  bool b1 = false;
  bool b2 = false;
  bool b3 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
            icon: Icon(b1? Icons.star:Icons.star_border),
            onPressed: (){
              setState(() {
                if(b1==true) {
                  b1 = false;
                  b2= false;
                  b3=false;
                }else{
                  b1=true;
                  b2=false;
                  b3=false;
                }
              });
            }
        ),
        IconButton(
            icon: Icon(b2? Icons.star:Icons.star_border),
            onPressed: (){
              setState(() {
                if(b2==true) {
                  b2 = false;
                  b1 = false;
                  b3=false;
                }else{
                  b1=true;
                  b2=true;
                  b3=false;
                }
              });
            }
        ),
        IconButton(
            icon: Icon(b3? Icons.star:Icons.star_border),
            onPressed: (){
              setState(() {
                if(b3==true) {
                  b1 = false;
                  b2= false;
                  b3 = false;
                }else{
                  b1=true;
                  b2=true;
                  b3=true;
                }
              });
            }
        ),
      ],
    );
  }
}
