import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoMenuItem {


  final String title;
  final Icon icon;

  TodoMenuItem({this.title, this.icon});


  static List<TodoMenuItem> foodMenuList(){

    List<TodoMenuItem> foodMenuList = [
      TodoMenuItem(title: 'Fast Food', icon: Icon(Icons.fastfood)),
      TodoMenuItem(title: 'Remind Me', icon: Icon(Icons.add_alarm)),
      TodoMenuItem(title: 'Flight', icon: Icon(Icons.flight)),
      TodoMenuItem(title: 'Music', icon: Icon(Icons.audiotrack)),
    ];

    return foodMenuList;
  }
}
