import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NicePage extends StatelessWidget {
  final String foo;

  NicePage(this.foo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nice Pageでーす"),
        ),
        body: Container(
            height: double.infinity,
            color: Colors.purple,
            width: double.infinity,
            child: Column(
              children: [
                Text("Nice play, " + this.foo + "!"),
                RaisedButton(
                    onPressed: () {
                      Navigator.pop(context, "ここで結果をかえせます");
                    },
                    child: Text("押して")),
              ],
            )));
  }
}
