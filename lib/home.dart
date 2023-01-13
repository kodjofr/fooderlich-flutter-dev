import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  // Add state variables and functions

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
      body: Center(
        child: Text('Let\'s get cooking',
        style: Theme.of(context).textTheme.headline1)),
    );
  }
}
