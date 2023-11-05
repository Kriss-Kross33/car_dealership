import 'package:car_api/car_api.dart' show Failure, CarModel, Success;
import 'package:fpdart/fpdart.dart';

/// {@template car_api}
/// The interface for an API that provides access to a list of Cars.
/// {@endtemplate}
abstract class CarApi {
  /// {@macro car_api}
  const CarApi();

  Stream<Either<Failure, List<CarModel>>> getCars();

  /// Creates a [CarModel].
  ///
  /// If the [CarModel] with the same id already exists, it will be replaced.
  Future<Either<Failure, Success>> createCar(CarModel car);

  /// Delete a [CarModel] with the given id.
  ///
  /// if no `CarModel` with the given id exists, a [CarNotFoundException]
  /// is thrown.
  Future<Either<Failure, Success>> deleteCar(String id);
}

/// Error thrown when a [CarModel] with a given id is not found.
class CarNotFoundException implements Exception {}
