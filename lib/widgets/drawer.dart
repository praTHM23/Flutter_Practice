import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ImageUrl =
        "https://instagram.fbom38-1.fna.fbcdn.net/v/t51.2885-19/295994888_596841311846886_8934324382238651373_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fbom38-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=8fk2mT49lmcAX-Tkmif&tn=wwMzxC6Z75Kg63J6&edm=ACWDqb8BAAAA&ccb=7-5&oh=00_AfBt3js3nsK5gkf3QYKkKMSc4FUsmLKonfH5oOpZcy0zYw&oe=63719BEF&_nc_sid=1527a3";
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
