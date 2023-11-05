import 'package:car_api/car_api.dart';
import 'package:fpdart/fpdart.dart';

/// {@template car_repository}
/// A repository that handles `CarModels` related requests.
/// {@endtemplate}
class CarRepository {
  /// {@macro car_repository}
  CarRepository({required CarApi carApi}) : _carApi = carApi;

  final CarApi _carApi;

  /// Provides a [Stream] of all cars.
  Stream<Either<Failure, List<CarModel>>> getCars() => _carApi.getCars();

  /// Createsa a [CarModel].
  ///
  /// if a [CarModel] with the same id already exists, it will be replaced
  Future<Either<Failure, Success>> createCar(CarModel car) =>
      _carApi.createCar(car);

  /// Deletes a `CarModel` with a given id.
  ///
  /// if `CarModel` has been deleted successfully, the right side
  /// of [Either] which is [Success] is returned.
  /// if no `CarModel` with given id exists, the left side of
  /// [Either] which is  [Failure] is returned.
  Future<Either<Failure, Success>> deleteCar(String id) =>
      _carApi.deleteCar(id);
}
