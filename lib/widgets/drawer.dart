// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final imageURL =
      "https://scontent.fkhi3-1.fna.fbcdn.net/v/t39.30808-1/p160x160/269035435_650753795918711_5705173874330058536_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeEQGkJ1I0tP85FNj0C_6GOoY9kdB2mxnAJj2R0HabGcAj5JydCGd1S-8dZPKo926VyDYEuq2u0p6vMIbLC2-gai&_nc_ohc=isQVALIiFpIAX8-BNRQ&_nc_ht=scontent.fkhi3-1.fna&oh=00_AT904NPq_fAIf-bPm55k84Xd4z1yQtavt9oKKrYsP2X8vQ&oe=62022427";

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
