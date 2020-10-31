import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sample Pageでーす"),
        ),
        body: Container(
          height: double.infinity,
          color: Colors.cyanAccent,
        ));
  }
}
