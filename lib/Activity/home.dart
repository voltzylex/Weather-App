import 'dart:developer';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String username = "";
  getData() async {
    // process
    await Future.delayed(Duration(seconds: 1), () {
      username = "Sushil";
    });
  }

  void showData() async {
    await getData();
    print("$username");
  }

  int counter = 1;
  @override
  void initState() {
    super.initState();
    // getData();
    showData();
    print("Init state called");
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print("Setstate called ");
  }

  @override
  void dispose() {
    super.dispose();
    print("Disposed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Bar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(60),
        child: Column(
          children: [
            FloatingActionButton(
                onPressed: () => setState(() {
                      counter += 1;
                    })),
            Text("$counter"),
          ],
        ),
      ),
    );
  }
}
