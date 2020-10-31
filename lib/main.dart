import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    try {
      return Scaffold(
        backgroundColor: Colors.greenAccent,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('これはAppBar.Textです'),
          actions: [],
        ),
        body: Center(
          child: RaisedButton(
            child: Text("押っす"),
            onPressed: () {
              print("オッス！");
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("特に何もしない");
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      );
    } on Exception catch (e, s) {
      print(s);
    }
  }
}