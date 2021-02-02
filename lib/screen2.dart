import 'package:flutter/material.dart';
import 'widgets/person_list_tile.dart';

class Screen2 extends StatelessWidget {

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
          return PersonContainer(
             name: names[index],
              distance: distances[index],
              area: area[index]
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
