// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarModel _$CarModelFromJson(Map<String, dynamic> json) => CarModel(
      id: json['id'] as int,
      model: json['model'] as String,
      make: json['make'] as String,
      price: (json['price'] as num).toDouble(),
      negotiable: json['negotiable'] as bool? ?? true,
      availability:
          $enumDecodeNullable(_$AvailabilityEnumMap, json['availability']) ??
              Availability.available,
      engineSize: json['engineSize'] as String,
      color: json['color'] as String,
      interiorColor: json['interiorColor'] as String,
      numberOfCylinders: json['numberOfCylinders'] as int,
      yearOfManufacture: json['yearOfManufacture'] as int,
      body: $enumDecode(_$BodyEnumMap, json['body']),
      horsePower: json['horsePower'] as int,
      condition: $enumDecode(_$ConditionEnumMap, json['condition']),
      description: json['description'] as String,
      transmission: $enumDecode(_$TransmissionEnumMap, json['transmission']),
      mileage: json['mileage'] as int,
      trim: json['trim'] as String,
      fuel: $enumDecode(_$FuelEnumMap, json['fuel']),
      seats: json['seats'] as int,
      isRegistered: json['isRegistered'] as bool,
      driveTrain: $enumDecode(_$DriveTrainEnumMap, json['driveTrain']),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CarModelToJson(CarModel instance) => <String, dynamic>{
      'id': instance.id,
      'model': instance.model,
      'make': instance.make,
      'price': instance.price,
      'negotiable': instance.negotiable,
      'availability': _$AvailabilityEnumMap[instance.availability]!,
      'engineSize': instance.engineSize,
      'color': instance.color,
      'interiorColor': instance.interiorColor,
      'numberOfCylinders': instance.numberOfCylinders,
      'yearOfManufacture': instance.yearOfManufacture,
      'body': _$BodyEnumMap[instance.body]!,
      'horsePower': instance.horsePower,
      'condition': _$ConditionEnumMap[instance.condition]!,
      'description': instance.description,
      'transmission': _$TransmissionEnumMap[instance.transmission]!,
      'mileage': instance.mileage,
      'trim': instance.trim,
      'fuel': _$FuelEnumMap[instance.fuel]!,
      'seats': instance.seats,
      'isRegistered': instance.isRegistered,
      'driveTrain': _$DriveTrainEnumMap[instance.driveTrain]!,
      'images': instance.images,
    };

const _$AvailabilityEnumMap = {
  Availability.sold: 'sold',
  Availability.available: 'available',
};

const _$BodyEnumMap = {
  Body.hatchBack: 'hatchBack',
  Body.suv: 'suv',
  Body.suvCoupe: 'suvCoupe',
  Body.pickup: 'pickup',
  Body.miniVan: 'miniVan',
  Body.coupe: 'coupe',
  Body.sedan: 'sedan',
  Body.sWagon: 'sWagon',
  Body.convertible: 'convertible',
  Body.micro: 'micro',
  Body.sportsCoupe: 'sportsCoupe',
  Body.wagon: 'wagon',
  Body.compact: 'compact',
};

const _$ConditionEnumMap = {
  Condition.brandNew: 'brandNew',
  Condition.foreignUsed: 'foreignUsed',
  Condition.ghanaianUsed: 'ghanaianUsed',
};

const _$TransmissionEnumMap = {
  Transmission.automatic: 'automatic',
  Transmission.manual: 'manual',
  Transmission.cvt: 'cvt',
  Transmission.amt: 'amt',
};

const _$FuelEnumMap = {
  Fuel.petrol: 'petrol',
  Fuel.diesel: 'diesel',
  Fuel.bioDiesel: 'bioDiesel',
  Fuel.ethanol: 'ethanol',
  Fuel.lpg: 'lpg',
};

const _$DriveTrainEnumMap = {
  DriveTrain.allWheelDrive: 'allWheelDrive',
  DriveTrain.frontWheelDrive: 'frontWheelDrive',
  DriveTrain.rearWheelDrive: 'rearWheelDrive',
  DriveTrain.fourWheelDrive: 'fourWheelDrive',
};
