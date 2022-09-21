import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomato/goout.dart';
import 'package:tomato/proffile.dart';
import 'package:tomato/search.dart';

import 'bottom_navbar.dart';
import 'order_home.dart';

class TomatoHome extends StatefulWidget {
  const TomatoHome({Key? key}) : super(key: key);

  @override
  State<TomatoHome> createState() => _TomatoHomeState();
}

class _TomatoHomeState extends State<TomatoHome> {
  int _selectedIndex = 0;
  Color color = Color(0xffce1b4d);
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("TOMATO"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              icon: Icon(Icons.person_outline),
              onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        width: double.infinity,
        child: ListView(
          children: [
            DrawerHeader(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.musicmundial.com/en/wp-content/uploads/2022/09/BTS-V-talks-about-how-the-group-supports-each-others-solo-work-750x536.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.fastfood_outlined,
                color: color,
              ),
              title: Text("Orders"),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_outlined,
                color: color,
              ),
              title: Text("My Account"),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.location_on_outlined,
                color: color,
              ),
              title: Text(
                "My Addresses",
              ),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.payment_rounded,
                color: color,
              ),
              title: Text("Payments & Refunds"),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app_outlined,
                color: color,
              ),
              title: Text("Logout"),
              onTap: () {},
            ),
            Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          OrderHome(),
          GoOut(),
          Search(),
        ],
      ),
      bottomNavigationBar: BottomNavbar(_selectedIndex, _onItemTapped),
    );
  }
}
