part of 'sell_car_cubit.dart';

final class SellCarState extends Equatable {
  const SellCarState({
    this.isValid = false,
    this.status = FormzSubmissionStatus.initial,
    this.errorMessage,
    this.model = const Field.pure(),
    this.make = const Field.pure(),
    this.yearOfManufacture = const Year.pure(),
    this.milage = const Field.pure(),
    this.price = const Field.pure(),
    this.color = const Field.pure(),
    this.body = const Field.pure(),
    this.fuel = const Field.pure(),
    this.interiorColor = const Field.pure(),
    this.numberOfCylinders = const Field.pure(),
    this.engineSize = const Field.pure(),
    this.transmission = const Field.pure(),
    this.condition = const Field.pure(),
    this.description = const Field.pure(),
    this.horsePower = const Field.pure(),
    this.trim = const Field.pure(),
    this.seats = const Field.pure(),
    this.isRegistered = true,
    this.driveTrain = const Field.pure(),
    this.images = const [],
  });

  final bool isValid;
  final FormzSubmissionStatus status;
  final Field make;
  final Field model;
  final Year yearOfManufacture;
  final Field milage;
  final Field price;
  final Field color;
  final Field interiorColor;
  final Field body;
  final Field fuel;
  final Field numberOfCylinders;
  final Field engineSize;
  final Field transmission;
  final Field condition;
  final Field description;
  final Field horsePower;
  final Field trim;
  final Field seats;
  final bool isRegistered;
  final Field driveTrain;
  final List<String> images;
  final String? errorMessage;

  SellCarState copyWith({
    bool? isValid,
    FormzSubmissionStatus? status,
    Field? make,
    Field? model,
    Year? yearOfManufacture,
    Field? milage,
    Field? price,
    Field? color,
    Field? interiorColor,
    Field? body,
    Field? fuel,
    Field? numberOfCylinders,
    Field? engineSize,
    Field? transmission,
    Field? condition,
    Field? description,
    Field? horsePower,
    Field? trim,
    Field? seats,
    bool? isRegistered,
    Field? driveTrain,
    List<String>? images,
    String? errorMessage,
  }) {
    return SellCarState(
      isValid: isValid ?? this.isValid,
      status: status ?? this.status,
      make: make ?? this.make,
      model: model ?? this.model,
      yearOfManufacture: yearOfManufacture ?? this.yearOfManufacture,
      milage: milage ?? this.milage,
      price: price ?? this.price,
      color: color ?? this.color,
      interiorColor: interiorColor ?? this.interiorColor,
      body: body ?? this.body,
      fuel: fuel ?? this.fuel,
      numberOfCylinders: numberOfCylinders ?? this.numberOfCylinders,
      engineSize: engineSize ?? this.engineSize,
      transmission: transmission ?? this.transmission,
      condition: condition ?? this.condition,
      description: description ?? this.description,
      horsePower: horsePower ?? this.horsePower,
      trim: trim ?? this.trim,
      seats: seats ?? this.seats,
      isRegistered: isRegistered ?? this.isRegistered,
      driveTrain: driveTrain ?? this.driveTrain,
      images: images ?? this.images,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        errorMessage,
        isValid,
        status,
        make,
        model,
        yearOfManufacture,
        milage,
        price,
        color,
        interiorColor,
        body,
        fuel,
        numberOfCylinders,
        engineSize,
        transmission,
        condition,
        description,
        horsePower,
        trim,
        seats,
        isRegistered,
        driveTrain,
        images,
      ];
}
