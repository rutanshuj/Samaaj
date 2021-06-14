import 'package:flutter/material.dart';

class CustomSearchBox extends StatelessWidget {

  final String hintText;
  final Function onChanged;

  const CustomSearchBox({Key key,
    @required this.hintText,
    @required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.height * 0.06,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.60,
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: hintText,
                ),
                onChanged: onChanged,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
