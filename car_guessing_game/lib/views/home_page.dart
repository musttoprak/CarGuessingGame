import 'dart:math';

import 'package:car_guessing_game/data/strings.dart';
import 'package:car_guessing_game/views/brand_categories.dart';
import 'package:car_guessing_game/views/questions_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(211102242122),
        elevation: 1,
        title: const Center(
          child: Text(
            Strings.AppName,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
        ),
        toolbarHeight: 80,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundImage: Strings.avatar,
          ),
        ),
        leadingWidth: 65,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.settings, size: 30),
          )
        ],
        automaticallyImplyLeading: true,
      ),
      body: Column(children: listCategories),
      backgroundColor: Colors.grey.shade400,
    );
  }

  List<Widget> get listCategories {
    List<String> kategoriler = [
      "Süreli Yarışma",
      "Süresiz Yarışma",
      "Markaya Göre Süreli",
      "Markaya Göre Süresiz"
    ];
    return [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          color: Colors.black,
          height: 40,
          alignment: Alignment.center,
          child: const Text(
            "Kategoriler",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
          ),
        ),
      ),
      Expanded(
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BrandCategory()),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(36)),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(160225175227),
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(36)),
                        image: const DecorationImage(
                            image: AssetImage("assets/kum.png"),
                            repeat: ImageRepeat.repeat),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Text(
                    kategoriler[0],
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        backgroundColor: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(36)),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(1582274289),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: const BorderRadius.all(Radius.circular(36)),
                      image: const DecorationImage(
                          image: AssetImage("assets/sonsuz.png"),
                          repeat: ImageRepeat.repeat),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Text(
                  kategoriler[1],
                  style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      backgroundColor: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(36)),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(1911038479),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: const BorderRadius.all(Radius.circular(36)),
                      image: const DecorationImage(
                          image: AssetImage("assets/car.png"),
                          repeat: ImageRepeat.repeat),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Text(
                  kategoriler[2],
                  style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      backgroundColor: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(36)),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(23177247105),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: const BorderRadius.all(Radius.circular(36)),
                      image: const DecorationImage(
                          image: AssetImage("assets/car.png"),
                          repeat: ImageRepeat.repeat),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Text(
                  kategoriler[3],
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 50,
      )
    ];
  }
}
