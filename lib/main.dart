import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List view add data"),
        ),

        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              RaisedButton(child: Text("add data"), onPressed: (){
                setState(() {
                  widgets.add(Text("data ke - " + counter.toString(), style: TextStyle(fontSize: 35),));
                  counter++;
                });
              },),
              RaisedButton(child: Text("delete data"), onPressed: (){
                setState(() {
                  widgets.removeLast();
                  counter--;
                });
              },)
            ],),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets
            )
          ],
        ),
      ),
      
    );
  }
}