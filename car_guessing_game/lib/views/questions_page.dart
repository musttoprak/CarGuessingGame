import 'dart:math';

import 'package:car_guessing_game/data/strings.dart';
import 'package:car_guessing_game/models/car.dart';
import 'package:car_guessing_game/models/car_brand.dart';
import 'package:car_guessing_game/models/car_model.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});
  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  _QuestionsState();
  List<Car> cars = Strings.carsToAdd();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cars.length.toString()),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/car/${cars[0].brand.brandName.toLowerCase()}/${cars[0].model.imageUrl}"),
                fit:BoxFit.cover
              )),
            ),
            SizedBox(height: 50),
            Column(children: createContainer(cars[0]))
          ],
        ),
      ),
    );
  }

  List<Container> createContainer(Car car) {
    var containers = Strings.answers(car);
    return containers
        .map((e) => Container(
              child: Text(e),
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(24)),
            ))
        .toList();
  }
}
