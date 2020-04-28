import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.blue.shade200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.access_alarm),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.bookmark_border),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.flight),
              color: Colors.white,
              onPressed: () {},
            ),
            Divider(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade200,
        onPressed: () => print('AAAAAA'),
        child: Icon(Icons.add),
      ),
    );
  }
}
