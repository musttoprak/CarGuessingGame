import 'package:car_guessing_game/data/strings.dart';
import 'package:flutter/material.dart';

class ChooseAvatar extends StatefulWidget {
  const ChooseAvatar({super.key});

  @override
  State<ChooseAvatar> createState() => _ChooseAvatarState();
}

class _ChooseAvatarState extends State<ChooseAvatar> {
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
        leading: CircleAvatar(
          backgroundImage: MyAppBar.avatar,
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
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 16, mainAxisSpacing: 16),
        itemBuilder: (BuildContext context, index) {
          return InkWell(
              onTap: () {
                MyAppBar.avatar ==
                    AssetImage("assets/animals/${index + 1}.png");
                Navigator.pop(context);
              },
              child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("assets/animals/${index + 1}.png")))));
        },
        itemCount: 12,
      ),
    );
  }
}
