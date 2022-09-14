import 'package:car_guessing_game/models/car_brand.dart';

class CarModel{
  final int id;
  final String modelName;
  final String imageUrl;
  final int brandId;

  CarModel(this.id,this.modelName, this.imageUrl, this.brandId);
}