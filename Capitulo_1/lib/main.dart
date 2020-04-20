import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.blue,
        primarySwatch: Colors.lightGreen,
        canvasColor: Colors.lightGreen.shade100,
          platform: TargetPlatform.iOS
      ),
      home: MyHomePage(title: 'Flutter Demo Home Pages'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  int fhkghk = 0;

  _MyHomePageState({this.fhkghk});

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      print(_counter);
      List listOfFilters = ['company', 'city', 'state'];

      listOfFilters.forEach((filter) => print('filter: $filter'));
      Runes myEmoji = Runes('\u{1f607}');
      print(String.fromCharCodes(myEmoji));

      new _MyHomePageState(fhkghk: 9);

      totalCookiesCount()
          .then((count) {
        print('cookiesCount: ${count}');
      });
      print('This will print before cookiesCount');
// This will print before cookiesCount
// cookiesCount: 33

    });
  }

  Future<int> totalCookiesCount() async {
    int cookiesCount = await lookupTotalCookiesCountDatabase(); // Returns 33
    return Future.delayed(Duration(seconds: 5)).then((onValue) => cookiesCount);
  }

  Future<int> lookupTotalCookiesCountDatabase() async {
// In a real world app we call the web server to retrieve live data
    return 33;
  }

  void _updateSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Theme(
// Unique theme with ThemeData - Overwrite
            data: ThemeData(
              cardColor: Colors.deepOrange,
            ),
            child: Card(
              child: Text('Unique ThemeData'),
            ),
          ),
          Theme(
// copyWith Theme - Inherit (Extended)
            data: Theme.of(context).copyWith(cardColor: Colors.deepOrange),
            child: Card(
              child: Text('copyWith Theme'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
