import 'package:car_guessing_game/data/strings.dart';
import 'package:flutter/material.dart';

class BrandCategory extends StatefulWidget {
  const BrandCategory({Key? key}) : super(key: key);

  @override
  State<BrandCategory> createState() => _BrandCategoryState();
}

class _BrandCategoryState extends State<BrandCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: TextField(
            decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: "Search",
                hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
                prefixIcon: const Icon(Icons.search, color: Colors.black),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
          toolbarHeight: 70,
          automaticallyImplyLeading: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: Strings.CarBrands.map((brand) => Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        image: DecorationImage(
                            image: AssetImage("assets/brand/${brand.imageUrl}"),
                            fit: BoxFit.contain),
                        border: Border.all(
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          brand.brandName,
                          style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      ),
                    )).toList()),
          ),
        ));
  }
}
/*TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    prefixIcon: const Icon(Icons.search, color: Colors.white),
                    filled: true,
                    fillColor: Colors.amberAccent,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              
              GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: Strings.CarBrands.map((brand) => Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      )).toList()) */