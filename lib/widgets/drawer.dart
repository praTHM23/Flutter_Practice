import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ImageUrl = "";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Prathamesh Naik"),
                accountEmail: Text("prathamesh2302@gmail,com"),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(ImageUrl)),
              ),
            ),
            ListTile(
              onTap: (() {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              }),
              leading: Icon(CupertinoIcons.home, color: Colors.black),
              title: Text(
                "Home",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            ListTile(
              onTap: (() {
                Navigator.pushNamed(context, MyRoutes.profileRoute);
              }),
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.black),
              title: Text(
                "Profile",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            ListTile(
              onTap: (() {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              }),
              leading: Icon(CupertinoIcons.lock, color: Colors.black),
              title: Text(
                "Logout",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
