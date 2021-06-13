import 'package:flutter/material.dart';

class PersonContainer extends StatelessWidget {
  final String name;
  final String distance;
  final String area;

  PersonContainer({
    @required this.name,
    @required this.distance,
    @required this.area,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.black12,
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(name, style: TextStyle(
                    fontSize: 20.0, color: Colors.indigo[700])),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(distance, style: TextStyle(
                        fontSize: 20.0, color: Colors.indigo[700])),
                    Text(area, style: TextStyle(
                        fontSize: 20.0, color: Colors.indigo[700]))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}