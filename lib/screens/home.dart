import 'package:flutter/material.dart';
import 'package:todolistapp/screens/customise_app.dart';

class Home extends StatelessWidget {
  String themeColour;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final SnackBar snackBar = const SnackBar(content: Text('This is a snackbar'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Settings'),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
            ),
            ListTile(
              title: Text('Change theme'),
              onTap: () {
                //go to theme change screen

                Navigator.pop(context);
                return customiseApp();
              },
            ),
            ListTile(
              title: Text('Clear list'),
              onTap: () {
                //clear list of all elements
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
          title: Text('To do!'),
          backgroundColor: Colors.amber[500],
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.create),
                onPressed: () {
                  scaffoldKey.currentState.showSnackBar(snackBar);
                }),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: null,
            ),
          ]),
    );
  }
}
