import 'package:flutter/material.dart';

import '../../features/design_demo/presentation/pages/design_demo_page.dart';
import '../../features/fruit/presentation/pages/fruit_page.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({super.key});

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int currentIndex = 0;
  final List<StatelessWidget> bodyWidgets = <StatelessWidget>[
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Fruit',
            icon: Icon(Icons.restaurant),
          ), // TODO(dleurs): change label
          BottomNavigationBarItem(
            label: 'Design',
            icon: Icon(Icons.design_services),
          ), // TODO(dleurs): change label
        ],
        onTap: (int newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
      ),
    );
  }
}
