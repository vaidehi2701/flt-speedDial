import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.home_menu,
        animatedIconTheme: IconThemeData(size: 22.0),
        animationSpeed: 500,
        curve: Curves.easeOutQuad,
        overlayColor: Colors.black,
        icon: Icons.add,
        activeIcon: Icons.add,
        spacing: 8.0,
        spaceBetweenChildren: 5.0,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(
              Icons.camera_rounded,
              color: Colors.white,
            ),
            backgroundColor: Colors.orangeAccent,
            labelStyle: TextStyle(fontSize: 15.0),
            onTap: () => print('SECOND CHILD'),
          ),
          SpeedDialChild(
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            backgroundColor: Colors.deepOrangeAccent,
            label: 'Menu Item 2',
            labelStyle: TextStyle(fontSize: 15.0),
            onTap: () {},
          ),
          SpeedDialChild(
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
              backgroundColor: Colors.deepOrange,
              label: 'Menu Item 1',
              labelStyle: TextStyle(fontSize: 15.0),
              onTap: () => print('FIRST CHILD')),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Unicorn Dialer'),
      ),
      body: Center(
        child: Text(
          "@ Flash_coder_404",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
        ),
      ),
    );
  }

  void show() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: showMessage(),
            content: Text('what u wann say'),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  showMessage() {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('image/b6.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Demo Title'),
        )
      ],
    );
  }
}
