import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SampleArguments {
  final String name;
  final int age;

  SampleArguments(this.name, this.age);
}

class SamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SampleArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text("Sample Pageでーす"),
        ),
        body: Container(
            height: double.infinity,
            color: Colors.cyanAccent,
            width: double.infinity,
            child: Column(
              children: [
                Text("戻る.name:" + args.name + ", age:" + args.age.toString()),
                ElevatedButton(
                    onPressed: () {
                      print("foo");
                      Navigator.pop(context);
                    },
                    child: Text("押す")),
              ],
            )));
  }
}
