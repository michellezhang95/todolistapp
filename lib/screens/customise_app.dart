import 'package:flutter/material.dart';

class customiseApp extends StatelessWidget {
  @override
  String color = '';
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThemeList(),
      appBar: AppBar(
        title: Text('Account Settings'),
        backgroundColor: Colors.brown[800],
      ),
    );
  }
}

class ThemeList extends StatefulWidget {
  @override
  _ThemeListState createState() => _ThemeListState();
}

class _ThemeListState extends State<ThemeList> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
//dark/light theme
//set colour for light theme
//change user name (firebase)
