import 'package:flutter/material.dart';
import 'package:response_application/adapt_ui.dart';
import 'package:response_application/desktop/desktop_layout.dart';
import 'package:response_application/drawer/drawer.dart';
import 'package:response_application/mobile/mobile_layout.dart';
import 'package:response_application/tablet/tablet_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> global = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: global,
      backgroundColor: const Color(0xFFF7F9FA),
      appBar: MediaQuery.of(context).size.width < 501
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  global.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      drawer: MediaQuery.of(context).size.width < 501 ?const CustomDrawer() : null,
      body: AdaptUi(
        desktop: (context) => const DesktopLayout(),
        mobile: (context) => const MobileLayout(),
        tablet: (context) => const TabletLayout(),
      ),
    );
  }
}
