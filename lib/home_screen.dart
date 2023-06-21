import 'package:flutter/material.dart';

import 'app_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, RouteNames.products,arguments: [
              "Farrux",
              "Messi",
              "Mbappe",
              "Ronaldo",
              "Neymaar",
            ]);
          },child: Text("Navigaor"),),)
        ],
      ),
    );
  }
}
