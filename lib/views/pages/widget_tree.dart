import 'package:flutter/material.dart';
import 'package:mythirdproject/views/pages/home_page.dart';
import 'package:mythirdproject/views/pages/profile_page.dart';

import '/widgets/navbar_widgets.dart';

List<Widget> pages = [ProfilePage(), HomePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('this is the first app')),
      body: pages.elementAt(0),
      bottomNavigationBar: NavbarWidgets(),
    );
  }
}
