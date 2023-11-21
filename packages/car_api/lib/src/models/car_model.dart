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
    required this.images,
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
  final List<String> images;

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);

  Map<String, dynamic> toJson() => _$CarModelToJson(this);

  CarModel copyWith({
    int? id,
    String? model,
    String? make,
    double? price,
    bool? negotiable,
    Availability? availability,
    String? engineSize,
    String? color,
    String? interiorColor,
    int? numberOfCylinders,
    int? yearOfManufacture,
    Body? body,
    int? horsePower,
    Condition? condition,
    String? description,
    Transmission? transmission,
    int? mileage,
    String? trim,
    Fuel? fuel,
    int? seats,
    bool? isRegistered,
    DriveTrain? driveTrain,
    List<String>? images,
  }) {
    return CarModel(
      id: id ?? this.id,
      model: model ?? this.model,
      make: make ?? this.make,
      price: price ?? this.price,
      engineSize: engineSize ?? this.engineSize,
      color: color ?? this.color,
      interiorColor: interiorColor ?? this.interiorColor,
      numberOfCylinders: numberOfCylinders ?? this.numberOfCylinders,
      yearOfManufacture: yearOfManufacture ?? this.yearOfManufacture,
      body: body ?? this.body,
      horsePower: horsePower ?? this.horsePower,
      condition: condition ?? this.condition,
      description: description ?? this.description,
      transmission: transmission ?? this.transmission,
      mileage: mileage ?? this.mileage,
      trim: trim ?? this.trim,
      fuel: fuel ?? this.fuel,
      seats: seats ?? this.seats,
      isRegistered: isRegistered ?? this.isRegistered,
      driveTrain: driveTrain ?? this.driveTrain,
      images: images ?? this.images,
    );
  }

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
        images,
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
