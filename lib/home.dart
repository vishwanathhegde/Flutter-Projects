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
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_selectedIndex);
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          OrderHome(),
          GoOut(),
          Search(),
          Proffile(),
        ],
      ),
      bottomNavigationBar: BottomNavbar(_selectedIndex, _onItemTapped),
    );
  }
}
