import 'package:flutter/material.dart';

class NavbarWidgets extends StatefulWidget {
  const NavbarWidgets({super.key});

  @override
  State<NavbarWidgets> createState() => _NavbarWidgetsState();
}

class _NavbarWidgetsState extends State<NavbarWidgets> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: icon(Icons.person), label: 'profile'),
      ],
      onDestinationSelected: (int value) {
        setState(() {
          selectedindex = value;
        });
      },
      selectedIndex: selectedindex,
    );
  }
}
