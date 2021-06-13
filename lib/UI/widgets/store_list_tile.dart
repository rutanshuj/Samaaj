import 'package:flutter/material.dart';

class StoreContainer extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String distance;
  final String area;

  StoreContainer({
    @required this.name,
    @required this.distance,
    @required this.imageAsset,
    @required this.area,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.black12,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: new Image.asset(imageAsset),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontSize: 20.0, color: Colors.indigo[700]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      distance,
                      style:
                          TextStyle(fontSize: 20.0, color: Colors.indigo[700]),
                    ),
                    Text(
                      area,
                      style:
                          TextStyle(fontSize: 20.0, color: Colors.indigo[700]),
                    )
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
