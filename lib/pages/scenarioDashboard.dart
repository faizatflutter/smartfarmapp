import 'package:flutter/material.dart';
import 'package:smartfarmapp/widgets/drawer.dart';
import 'package:smartfarmapp/widgets/scenarioSlider.dart';

class scenarioDashboard extends StatefulWidget {
  @override
  _scenarioDashboardState createState() => _scenarioDashboardState();
}

class _scenarioDashboardState extends State<scenarioDashboard> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Smart Farm',
            style: TextStyle(
              fontFamily: "Rowdies",
              fontSize: 27.0,
              //  fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          ),
          actions: <Widget>[]),
      drawer: drawerScreen(),
      body: new Column(
        children: <Widget>[
          new SizedBox(
            height: 10.0,
          ),
          new Text(
            "Scenarios",
            style: new TextStyle(fontSize: 25.0,  fontFamily: "Rowdies"),
          ),
           new SizedBox(
            height: 10.0,
          ),
          scenarioSlider(),
        ],
      ),
    );
  }
}