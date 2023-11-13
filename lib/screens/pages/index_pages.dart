import 'package:flutter/material.dart';
import 'package:koto/screens/pages/home_pages.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _indexPage = 0;
  final List<Widget> _pagesList = const [
    HomePage(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
    Placeholder()
  ];

  changePage(index) {
    setState(() {
      _indexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pagesList[_indexPage],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        onTap: changePage,
        currentIndex: _indexPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "Calendrir"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}
