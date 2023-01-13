import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  // Add state variables and functions

  int _selectedIndex = 0;
  static List<Widget> pages = <Widget> [
    // TODO : Replace with Card1
    Container(color: Colors.red),
    // TODO : Replace with Card1
    Container(color: Colors.green),
    // TODO : Replace with Card1
    Container(color: Colors.blue)

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // Show selected tab

      body: pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:
        Theme.of(context).textSelectionTheme.selectionColor,

        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
