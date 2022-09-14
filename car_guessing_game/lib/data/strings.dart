
import 'package:car_guessing_game/models/car.dart';
import 'package:car_guessing_game/models/car_brand.dart';
import 'package:car_guessing_game/models/car_model.dart';
import 'package:flutter/material.dart';


class Strings {
  static const String AppName = "Car Guessing Game";

  static List<CarBrand> CarBrands = [
    //brandId=0
    CarBrand("Mercedes"),
    //brandId=1
    CarBrand("Bmw"),
    //brandId=2
    CarBrand("Volkswagen"),
    //brandId=3
    CarBrand("Fiat"),
    //brandId=4
    CarBrand("Ford"),
  ];

  static List<CarModel> CarModels=[
    CarModel(0,"2022 Mercedes A Serisi A200 1.3 AMG Plus", "a200.jpg", 0),
    CarModel(1,"2022 Mercedes A Serisi A200 1.3 AMG Plus", "c200_amg.jpg", 0),
  ];

  static List<Car>? Cars=carsToAdd();
  static List<Car>? carsToAdd() {
    List<Car>? carsList;
    for(var i=0;i>=Strings.CarModels.length;i++){
       carsList!.add(Car(CarModels[i],findToBrand(i)));
    }
    return carsList;
  }
  static List<Car> wantedCars(int brandId){
    List<Car> wantedCars=carsToWantedAdd(brandId);
    return wantedCars;
  }

 
  static List<Car> carsToWantedAdd(int wantedBrandId) {
    List<Car> cars=[];
    for(var i=0;i<=CarModels.length;i++){
      if(CarModels[i].brandId==wantedBrandId){
        cars.add(Car(CarModels[i], CarBrand(CarBrands[wantedBrandId].brandName)));
      }
    }
    return cars;
  }
  
  
  static CarBrand findToBrand(int index) {
    int brandId=CarModels[index].brandId;
    return CarBrand(CarBrands[brandId].brandName);
  }
  
  
}
