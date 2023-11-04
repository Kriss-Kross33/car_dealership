import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'car_model.g.dart';

/// {@template car_model}
/// Represents the car model class
/// {@endtemplate}
@JsonSerializable(explicitToJson: true)
class CarModel extends Equatable {
  /// {@macro car_model}
  const CarModel({
    required this.id,
    required this.model,
    required this.make,
    required this.price,
    this.negotiable = true,
    this.availability = Availability.available,
    required this.engineSize,
    required this.color,
    required this.interiorColor,
    required this.numberOfCylinders,
    required this.yearOfManufacture,
    required this.body,
    required this.horsePower,
    required this.condition,
    required this.description,
    required this.transmission,
    required this.mileage,
    required this.trim,
    required this.fuel,
    required this.seats,
    required this.isRegistered,
    required this.driveTrain,
  });

  final int id;
  final String model;
  final String make;
  final double price;
  final bool negotiable;
  final Availability availability;
  final String engineSize;
  final String color;
  final String interiorColor;
  final int numberOfCylinders;
  final int yearOfManufacture;
  final Body body;
  final int horsePower;
  final Condition condition;
  final String description;
  final Transmission transmission;
  final int mileage;
  final String trim;
  final Fuel fuel;
  final int seats;
  final bool isRegistered;
  final DriveTrain driveTrain;

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);

  Map<String, dynamic> toJson() => _$CarModelToJson(this);

  @override
  List<Object> get props => [
        id,
        model,
        price,
        negotiable,
        availability,
        engineSize,
        color,
        interiorColor,
        numberOfCylinders,
        yearOfManufacture,
        body,
        horsePower,
        condition,
        description,
        transmission,
        mileage,
        trim,
        fuel,
        seats,
        isRegistered,
        driveTrain,
      ];
}

enum Availability { sold, available }

enum Body {
  hatchBack,
  suv,
  suvCoupe,
  pickup,
  miniVan,
  coupe,
  sedan,
  sWagon,
  convertible,
  micro,
  sportsCoupe,
  wagon,
  compact,
}

enum Fuel {
  petrol,
  diesel,
  bioDiesel,
  ethanol,
  lpg,
}

enum Condition {
  brandNew,
  foreignUsed,
  ghanaianUsed,
}

enum Transmission {
  automatic,
  manual,
  cvt,
  amt,
}

enum DriveTrain {
  allWheelDrive,
  frontWheelDrive,
  rearWheelDrive,
  fourWheelDrive,
}
