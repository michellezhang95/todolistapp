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
  final List<String> themes = <String>['Red', 'Pink', 'Blue', 'Black', 'Green'];
  final int colorCode = 300;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: themes.length,
      itemBuilder: (BuildContext context, colorCode){
        return Container(
          
        )
      },
    );
  }
}
//dark/light theme
//set colour for light theme
//change user name (firebase)
