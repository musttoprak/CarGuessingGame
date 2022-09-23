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
        leading: InkWell(
          onTap: () => setState(() {}),
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
      body: Column(
        children: [
          categorysWidget("Marka Bilme", "kum.png", const Questions()),
          categorysWidget("Model Bilme", "sonsuz.png", const Questions()),
          categorysWidget(
              "Markaya Göre Model Bilme", "car.png", const BrandCategory()),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Expanded categorysWidget(String kategori, String asset, Widget navigator) {
    return Expanded(
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => navigator),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 4),
                    borderRadius: const BorderRadius.all(Radius.circular(36)),
                    image: DecorationImage(
                        image: AssetImage("assets/$asset"),
                        repeat: ImageRepeat.repeat),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Text(
                kategori,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
