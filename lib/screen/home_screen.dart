import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tuiter"),
      ),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          children: List.generate(
            10,
            (index) => Text("$index"),
          ),
        ),
      ),
    );
  }
}
