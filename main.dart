import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class Demo extends StatefulWidget {
  @override
  DemoState createState() => new DemoState();
}

class DemoState extends State<Demo> {
  Map<String, bool> values = {
    "1. Task 1": false,
    "2. Task 2": false,
    "3. Task 3": false,
    "4. Task 4": false,
    "5. Task 5": false,
  };
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Center(child: new Text("To do list")),
      ),
      body: new ListView(
        children: values.keys.map((String key) {
          return new CheckboxListTile(
            title: new Text(key),
            value: values[key],
            onChanged: (bool value) {
              setState(() {
                values[key] = value;
              });
            },
          );
        }).toList(),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    home: new Demo(),
    debugShowCheckedModeBanner: false,
  ));
}
