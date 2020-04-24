

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWithFlatButtonWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            /*
            FlatButton(
              onPressed: () {},
              child: Text('Flag'),
            ),
            FlatButton(
              onPressed: () {},
              child: Icon(Icons.flag),
              color: Colors.lightGreen,
              textColor: Colors.white,
            ),*/
            RaisedButton(
              onPressed: () {},
              child: Text('Save'),
            ),
// Customize - right button
            RaisedButton(
              onPressed: () {},
              child: Icon(Icons.save),
              color: Colors.lightGreen,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.flight),
            ),
// Customize - right button
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.flight),
              iconSize: 42.0,
              color: Colors.blue,
              tooltip: 'Flight',
            ),
// Customize - right button
          ],
        ),
      ],
    );
  }


}