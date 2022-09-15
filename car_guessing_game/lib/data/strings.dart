
import 'package:car_guessing_game/models/car.dart';
import 'package:car_guessing_game/models/car_brand.dart';
import 'package:car_guessing_game/models/car_model.dart';
import 'package:flutter/material.dart';


class Strings {
  static const String AppName = "Car Guessing Game";

  static List<CarBrand> CarBrands = [
    //brandId=0
    CarBrand(brandName: "Mercedes",imageUrl: "assets/mercedes_benz.png"),
    //brandId=1
    CarBrand(brandName:"Bmw",imageUrl:"assets/bmw.png"),
    //brandId=2
    CarBrand(brandName:"Volkswagen",imageUrl:"assets/volkswagen.png"),
    //brandId=3
    CarBrand(brandName:"Fiat",imageUrl:"assets/fiat.png"),
    //brandId=4
    CarBrand(brandName:"Ford",imageUrl:"assets/ford.png"),
    //brandId=5
    CarBrand(brandName:"Audi",imageUrl:"assets/audi.png"),
    //brandId=6
    CarBrand(brandName:"Opel",imageUrl:"assets/opel.png"),
    //brandId=7
    CarBrand(brandName:"Renault",imageUrl:"assets/renault.png"),
    //brandId=8
    CarBrand(brandName:"Porsche",imageUrl:"assets/porsche.png"),
    //brandId=9
    CarBrand(brandName:"Peugeot",imageUrl:"assets/peugeot.png"),
    //brandId=10
    CarBrand(brandName:"Seat",imageUrl:"assets/seat.png"),
    //brandId=11
    CarBrand(brandName:"Skoda",imageUrl:"assets/skoda.png"),
    //brandId=12
    CarBrand(brandName:"Volvo",imageUrl:"assets/volvo.png"),
    //brandId=13
    CarBrand(brandName:"Suzuki",imageUrl:"assets/suzuki.png"),
    //brandId=14
    CarBrand(brandName:"Nissan",imageUrl:"assets/nissan.png"),
    //brandId=15
    CarBrand(brandName:"Mitsubishi",imageUrl:"assets/mitsubishi.png"),
    //brandId=16
    CarBrand(brandName:"Mazda",imageUrl:"assets/mazda.png"),
    //brandId=17
    CarBrand(brandName:"Honda",imageUrl:"assets/honda.png"),
    //brandId=18
    CarBrand(brandName:"Kia",imageUrl:"assets/kia.png"),
    //brandId=19
    CarBrand(brandName:"Hyundai",imageUrl:"assets/hyundai.png"),
    //brandId=20
    CarBrand(brandName:"Chevrolet",imageUrl:"assets/chevrolet.png"),
    //brandId=21
    CarBrand(brandName:"Isuzu",imageUrl:"assets/isuzu.png"),
    //brandId=22
    CarBrand(brandName:"Land-Rover",imageUrl:"assets/land_rover.png"),
    //brandId=22
    CarBrand(brandName:"Toyota",imageUrl:"assets/toyota.png"),
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
