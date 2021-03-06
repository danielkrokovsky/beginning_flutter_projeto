import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                RowWidget(),
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                Row(
                  children: <Widget>[
                    RowAndColumnWidget(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

void _incrementCounter() {

}

class RowAndColumnWidget extends StatelessWidget {
  const RowAndColumnWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          color: Colors.yellow,
          height: 60.0,
          width: 60.0,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          color: Colors.amber,
          height: 40.0,
          width: 40.0,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          color: Colors.brown,
          height: 20.0,
          width: 20.0,
        ),
        Divider(),
        const RowAndStackWidget(),
        Divider(),
        Text('End of the Line'),
      ],
    );
  }
}

class RowAndStackWidget extends StatelessWidget {
  const RowAndStackWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.lightGreen,
          radius: 100.0,
          child: Stack(
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.yellow,
              ),
              Container(
                height: 60.0,
                width: 60.0,
                color: Colors.amber,
              ),
              Container(
                height: 40.0,
                width: 40.0,
                color: Colors.brown,
              ),
            ],
          ),
        ),
// Next step we'll add more widgets
      ],
    );
  }
}

class RowWidget extends StatelessWidget {

  const RowWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.yellow,
          height: 40.0,
          width: 40.0,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Expanded(
          child: Container(
            color: Colors.amber,
            height: 40.0,
            width: 40.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          color: Colors.brown,
          height: 40.0,
          width: 40.0,
        ),
      ],
    );
  }
}
