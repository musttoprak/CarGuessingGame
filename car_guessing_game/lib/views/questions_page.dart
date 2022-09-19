import 'package:car_guessing_game/data/strings.dart';
import 'package:car_guessing_game/models/car.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(padding: const EdgeInsets.all(8),child: Text("${1}/${cars.length}")),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/car/${cars[0].brand.brandName.toLowerCase()}/${cars[0].model.imageUrl}"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(100))),
              ),
            ),
            Expanded(child: createContainer(cars[0]))
          ],
        ),
      ),
    );
  }

  Column createContainer(Car car) {
    var carsModel = Strings.answers(car);
    carsModel.add(car.model.modelName);
    List<Container> containers = carsModel
        .map((e) => Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(16)),
              child: Text(
                e,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            ))
        .toList();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: containers,
    );
  }
}
