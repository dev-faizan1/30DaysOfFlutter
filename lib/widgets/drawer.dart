// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final imageURL = "https://avatars.githubusercontent.com/u/61882549?v=4";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text('Faizan'),
              accountEmail: Text('ch.faizan1947@gmail.com'),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: NetworkImage(imageURL)),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.info_circle,
              color: Colors.black,
            ),
            title: Text(
              'Info',
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
