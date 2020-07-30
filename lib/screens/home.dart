import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final SnackBar snackBar = const SnackBar(content: Text('This is a snackbar'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
            leading: Icon(Icons.cake),
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
                },
              ),
              ListTile(
                title: Text('Clear list'),
                onTap: () {
                  //clear list of all elements
                },
              )
            ],
          ),
        ));
  }
}
