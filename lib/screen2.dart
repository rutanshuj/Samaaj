import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  Widget storeContainer(String name, String distance, String area) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.black12,
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(name, style: TextStyle(fontSize: 20.0, color: Colors.indigo[700])),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(distance, style: TextStyle(fontSize: 20.0, color: Colors.indigo[700])),
                    Text(area, style: TextStyle(fontSize: 20.0, color: Colors.indigo[700]))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  final List<String> names = <String>[
    'Shop',
    'Shop',
    'Shop',
    'Shop',
    'Shop',
    'Shop',
    'Shop',
    'Shop',
    'Shop',
    'Shop'
  ];
  final List<String> distances = <String>[
    '2.7km',
    '2.7km',
    '2.7km',
    '2.7km',
    '2.7km',
    '2.7km',
    '2.7km',
    '2.7km',
    '2.7km',
    '2.7km'
  ];
  final List<String> area = <String>[
    'Area',
    'Area',
    'Area',
    'Area',
    'Area',
    'Area',
    'Area',
    'Area',
    'Area',
    'Area',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Search2"),
      ),
      body: new ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: distances.length,
        itemBuilder: (BuildContext context, int index) {
          return storeContainer(
              names[index], distances[index], area[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
