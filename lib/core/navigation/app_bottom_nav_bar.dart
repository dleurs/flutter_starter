import 'package:flutter/material.dart';
import 'package:flutter_starter/features/fruit/presentation/pages/fruit_page.dart';
import 'package:flutter_starter/features/design_demo/presentation/pages/design_demo_page.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({super.key});

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int currentIndex = 0;
  final bodyWidgets = [
    const FruitPage(),
    const DesignDemoPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: bodyWidgets,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(label: "Fruit", icon: Icon(Icons.restaurant)), //TODO change label
            BottomNavigationBarItem(label: "Design", icon: Icon(Icons.design_services)), //TODO change label
          ],
          onTap: (newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
          },
        ));
  }
}
