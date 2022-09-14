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
          height: 40,
          alignment: Alignment.center,
          child: const Text(
            "Kategoriler",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 28,color: Colors.white),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF8deeee),
              border: Border.all(color: Colors.black, width: 4),
              borderRadius: const BorderRadius.all(Radius.circular(36)),
              image: const DecorationImage(
                  image: AssetImage("assets/kum.png"),
                  repeat: ImageRepeat.repeat),
            ),
            alignment: Alignment.center,
            child: Text(
              kategoriler[0],
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.black,backgroundColor:Colors.white ),
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
              borderRadius: const BorderRadius.all(Radius.circular(36)),
              image: const DecorationImage(
                  image: AssetImage("assets/sonsuz.png"),
                  repeat: ImageRepeat.repeat),
            ),
            alignment: Alignment.center,
            child: Text(
              kategoriler[1],
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.black,backgroundColor:Colors.white  ),
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
              borderRadius: const BorderRadius.all(Radius.circular(36)),
              image: const DecorationImage(
                  image: AssetImage("assets/car.png"),
                  repeat: ImageRepeat.repeat),
            ),
            alignment: Alignment.center,
            child: Text(
              kategoriler[2],
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.black,backgroundColor:Colors.white  ),
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
              border: Border.all(color: Colors.black, width: 4),
              borderRadius: const BorderRadius.all(Radius.circular(36)),
              image: const DecorationImage(
                  image: AssetImage("assets/car.png"),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeat),
            ),
            alignment: Alignment.center,
            child: Text(
              kategoriler[3],
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.black,backgroundColor:Colors.white  ),
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
