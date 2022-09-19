import 'package:car_guessing_game/data/strings.dart';
import 'package:car_guessing_game/views/brand_categories.dart';
import 'package:car_guessing_game/views/choose_avatar.dart';
import 'package:car_guessing_game/views/questions_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _avatar= MyAppBar.avatar;
  @override
  Widget build(BuildContext context) {
    print(MyAppBar.avatar.assetName.toString());
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
            backgroundImage: _avatar,
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
    );
  }

  List<Widget> get listCategories {
    List<String> kategoriler = [
      "Marka Bilme",
      "Model Bilme",
      "Markaya Göre Model Bilme"
    ];
    return [
      IconButton(
        iconSize: 36,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ChooseAvatar()));
        },
        icon: const Icon(Icons.supervised_user_circle_outlined),
      ),
      Expanded(
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
                    image: const DecorationImage(
                        image: AssetImage("assets/kum.png"),
                        repeat: ImageRepeat.repeat),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Text(
                kategoriler[0],
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      Expanded(
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Questions()),
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
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BrandCategory()),
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
                      fontSize: 24, fontWeight: FontWeight.bold),
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
