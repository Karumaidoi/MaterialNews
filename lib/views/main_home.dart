import 'package:flutter/material.dart';

import 'pages/tech_news.dart';
import 'pages/tesla_news.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = const [TeslaNews(), TechNews()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          // indicatorColor: Colors.blue.shade200,
          labelTextStyle: MaterialStateProperty.all(const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          )),
        ),
        child: NavigationBar(
            selectedIndex: currentIndex,
            height: 80,
            onDestinationSelected: (index) =>
                // ignore: avoid_print
                setState(() {
                  currentIndex = index;
                }),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home_filled),
                  label: 'Home',
                  selectedIcon: Icon(Icons.home_filled)),
              NavigationDestination(
                  icon: Icon(Icons.code),
                  label: 'Dev',
                  selectedIcon: Icon(Icons.code)),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: '',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
