
import 'package:car_guessing_game/models/car.dart';
import 'package:car_guessing_game/models/car_brand.dart';
import 'package:car_guessing_game/models/car_model.dart';
import 'package:flutter/material.dart';


class Strings {
  static const String AppName = "Car Guessing Game";
  static const AssetImage avatar =  AssetImage("assets/guesscar.jpg");
  static List<CarBrand> CarBrands = [
    //brandId=0
    CarBrand(brandName: "Mercedes",imageUrl: "mercedes_benz.png"),
    //brandId=1
    CarBrand(brandName:"Bmw",imageUrl:"bmw.png"),
    //brandId=2
    CarBrand(brandName:"Volkswagen",imageUrl:"volkswagen.png"),
    //brandId=3
    CarBrand(brandName:"Fiat",imageUrl:"fiat.png"),
    //brandId=4
    CarBrand(brandName:"Ford",imageUrl:"ford.png"),
    //brandId=5
    CarBrand(brandName:"Audi",imageUrl:"audi.png"),
    //brandId=6
    CarBrand(brandName:"Opel",imageUrl:"opel.png"),
    //brandId=7
    CarBrand(brandName:"Renault",imageUrl:"renault.png"),
    //brandId=8
    CarBrand(brandName:"Porsche",imageUrl:"porsche.png"),
    //brandId=9
    CarBrand(brandName:"Peugeot",imageUrl:"peugeot.png"),
    //brandId=10
    CarBrand(brandName:"Seat",imageUrl:"seat.png"),
    //brandId=11
    CarBrand(brandName:"Skoda",imageUrl:"skoda.png"),
    //brandId=12
    CarBrand(brandName:"Volvo",imageUrl:"volvo.png"),
    //brandId=13
    CarBrand(brandName:"Suzuki",imageUrl:"suzuki.png"),
    //brandId=14
    CarBrand(brandName:"Nissan",imageUrl:"nissan.png"),
    //brandId=15
    CarBrand(brandName:"Mitsubishi",imageUrl:"mitsubishi.png"),
    //brandId=16
    CarBrand(brandName:"Mazda",imageUrl:"mazda.png"),
    //brandId=17
    CarBrand(brandName:"Honda",imageUrl:"honda.png"),
    //brandId=18
    CarBrand(brandName:"Kia",imageUrl:"kia.png"),
    //brandId=19
    CarBrand(brandName:"Hyundai",imageUrl:"hyundai.png"),
    //brandId=20
    CarBrand(brandName:"Chevrolet",imageUrl:"chevrolet.png"),
    //brandId=21
    CarBrand(brandName:"Isuzu",imageUrl:"isuzu.png"),
    //brandId=22
    CarBrand(brandName:"Land-Rover",imageUrl:"land_rover.png"),
    //brandId=22
    CarBrand(brandName:"Toyota",imageUrl:"toyota.png"),
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
        cars.add(Car(CarModels[i], CarBrand(brandName: CarBrands[wantedBrandId].brandName, imageUrl: CarBrands[wantedBrandId].imageUrl)));
      }
    }
    return cars;
  }
  
  
  static CarBrand findToBrand(int index) {
    int brandId=CarModels[index].brandId;
    return CarBrand(brandName: CarBrands[brandId].brandName,imageUrl: CarBrands[brandId].imageUrl);
  }
  
  
}
