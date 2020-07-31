import 'package:flutter/material.dart';
import 'package:todolistapp/screens/customise_app.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:rounded_floating_app_bar/rounded_floating_app_bar.dart';

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
                child: Text('Settings', style: TextStyle(fontSize: 55.0)),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text('Account Settings'),
                onTap: () {
                  //go to theme change screen
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => customiseApp()));
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
        appBar: GradientAppBar(
          backgroundColorStart: Colors.green,
          backgroundColorEnd: Colors.black,
          title: Text('To do!'),

          //gradient: LinearGradient(colors: null),
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
          ],
        ));
  }
}
