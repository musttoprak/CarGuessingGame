import 'dart:ui';

import 'package:car_guessing_game/views/questions_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _kategoriler = [
    "Süreli Yarışma",
    "Süresiz Yarışma",
    "Araba Markasına Göre Süreli",
    "Araba Markasına Göre Süresiz"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 1,
        title: const Text(
          "Mustafa Toprak",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
        toolbarHeight: 70,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            child: Text("M"),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.settings, size: 30),
          )
        ],
      ),
      body: Column(children: listCategories),
      backgroundColor: Colors.grey.shade700,
    );
  }

  List<Widget> get listCategories {
    return [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          height: 40,
          decoration: BoxDecoration(),
          alignment: Alignment.center,
          child: const Text(
            "Kategoriler",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue.shade300,
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: const BorderRadius.all(Radius.circular(36))),
            alignment: Alignment.center,
            child: Text(
              _kategoriler[0],
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue.shade200,
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: const BorderRadius.all(Radius.circular(36))),
            alignment: Alignment.center,
            child: Text(
              _kategoriler[1],
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue.shade100,
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: const BorderRadius.all(Radius.circular(36))),
            alignment: Alignment.center,
            child: Text(
              _kategoriler[2],
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue.shade50,
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: const BorderRadius.all(Radius.circular(36))),
            alignment: Alignment.center,
            child: Text(
              _kategoriler[3],
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      SizedBox(height: 50,)
    ];
  }


}