import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  BottomNavbar(this.index, this.indexFunction, {Key? key}) : super(key: key);

  int index;
  Function indexFunction;

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.fastfood_outlined),
          label: 'ORDER',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store_mall_directory_outlined),
          label: 'GO OUT',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: 'SEARCH',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded), label: "PROFFILE"),
      ],
      currentIndex: widget.index,
      selectedItemColor: Color(0xffce1b4d),
      onTap: (value) => widget.indexFunction(value),
      unselectedItemColor: Color.fromRGBO(160, 160, 160, 1),
    );
  }
}
