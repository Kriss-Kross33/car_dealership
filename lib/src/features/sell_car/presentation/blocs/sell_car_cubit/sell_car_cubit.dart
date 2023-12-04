import 'package:car_repository/car_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:formz_input/formz_input.dart';

part 'sell_car_state.dart';

class SellCarCubit extends Cubit<SellCarState> {
  SellCarCubit({
    required CarRepository carRepository,
  })  : _carRepository = carRepository,
        super(const SellCarState());

  final CarRepository _carRepository;

  void onMakeInput(String makeString) {
    final make = Field.dirty(makeString);
    emit(state.copyWith(
      make: make,
      isValid: Formz.validate([
        make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onModelInput(String modelString) {
    final model = Field.dirty(modelString);
    emit(state.copyWith(
      model: model,
      isValid: Formz.validate([
        state.make,
        model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onYearOfManufactureInput(String yearOfManufactureString) {
    final yearOfManufacture = Year.dirty(yearOfManufactureString);
    emit(state.copyWith(
      yearOfManufacture: yearOfManufacture,
      isValid: Formz.validate([
        state.make,
        state.model,
        yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onMilageInput(String milageString) {
    final milage = Field.dirty(milageString);
    emit(state.copyWith(
      milage: milage,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onPriceInput(String priceString) {
    final price = Field.dirty(priceString);
    emit(state.copyWith(
      price: price,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onColorInput(String colorString) {
    final color = Field.dirty(colorString);
    emit(state.copyWith(
      color: color,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onInteriorColorInput(String interiorColorString) {
    final interiorColor = Field.dirty(interiorColorString);
    emit(state.copyWith(
      interiorColor: interiorColor,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onBodyInput(String bodyString) {
    final body = Field.dirty(bodyString);
    emit(state.copyWith(
      body: body,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onFuelInput(String fuelString) {
    final fuel = Field.dirty(fuelString);
    emit(state.copyWith(
      fuel: fuel,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onNumberOfCylindersInput(String numberOfCylindersString) {
    final numberOfCylinders = Field.dirty(numberOfCylindersString);
    emit(state.copyWith(
      numberOfCylinders: numberOfCylinders,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onEngineSizeInput(String engineSizeString) {
    final engineSize = Field.dirty(engineSizeString);
    emit(state.copyWith(
      engineSize: engineSize,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onTransmissionInput(String transmissionString) {
    final transmission = Field.dirty(transmissionString);
    emit(state.copyWith(
      transmission: transmission,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onConditionInput(String conditionString) {
    final condition = Field.dirty(conditionString);
    emit(state.copyWith(
      condition: condition,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onDescriptionInput(String descriptionString) {
    final description = Field.dirty(descriptionString);
    emit(state.copyWith(
      description: description,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onHorsePowerInput(String horsePowerString) {
    final horsePower = Field.dirty(horsePowerString);
    emit(state.copyWith(
      horsePower: horsePower,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onTrimInput(String trimString) {
    final trim = Field.dirty(trimString);
    emit(state.copyWith(
      trim: trim,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        trim,
        state.seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onSeatsInput(String seatsString) {
    final seats = Field.dirty(seatsString);
    emit(state.copyWith(
      seats: seats,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        seats,
        // state.isRegistered,
        state.driveTrain,
        // state.images,
      ]),
    ));
  }

  void onDriveTrainPowerInput(String driveTrainString) {
    final driveTrain = Field.dirty(driveTrainString);
    emit(state.copyWith(
      driveTrain: driveTrain,
      isValid: Formz.validate([
        state.make,
        state.model,
        state.yearOfManufacture,
        state.milage,
        state.price,
        state.color,
        state.interiorColor,
        state.body,
        state.fuel,
        state.numberOfCylinders,
        state.engineSize,
        state.transmission,
        state.condition,
        state.description,
        state.horsePower,
        state.trim,
        state.seats,
        // state.isRegistered,
        driveTrain,
        // state.images,
      ]),
    ));
  }

  Future<void> onSubmitButtonPressed() async {
    if (state.isValid) {
      emit(
        state.copyWith(status: FormzSubmissionStatus.inProgress),
      );
      final eitherSuccessOrFailure = await _carRepository.createCar(
        CarModel(
          id: UniqueKey().hashCode,
          model: state.model.value,
          make: state.make.value,
          price: double.parse(state.price.value),
          engineSize: state.engineSize.value,
          color: state.color.value,
          interiorColor: state.interiorColor.value,
          numberOfCylinders: int.parse(state.numberOfCylinders.value),
          yearOfManufacture: int.parse(state.yearOfManufacture.value),
          body: Body.compact, //state.body.value,
          horsePower: int.parse(state.horsePower.value),
          condition: Condition.brandNew, //state.condition.value,
          description: state.description.value,
          transmission: Transmission.automatic, // state.transmission.value,
          mileage: int.parse(state.milage.value),
          trim: state.trim.value,
          fuel: Fuel.diesel, //state.fuel.value,
          seats: int.parse(state.seats.value),
          isRegistered: state.isRegistered,
          driveTrain: DriveTrain.allWheelDrive, //state.driveTrain.value,
          images: state.images,
        ),
      );

      eitherSuccessOrFailure.fold(
        (failure) => emit(
          state.copyWith(
            status: FormzSubmissionStatus.failure,
            errorMessage: failure.errorMessage,
          ),
        ),
        (success) => emit(
          state.copyWith(status: FormzSubmissionStatus.success),
        ),
      );
    }
  }
}
