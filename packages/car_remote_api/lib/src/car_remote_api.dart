import 'package:car_api/car_api.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/src/either.dart';

class CarRemoteApi extends CarApi {
  CarRemoteApi({
    FirebaseFirestore? firebaseFirestore,
  }) : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firebaseFirestore;

  @override
  Future<Either<Failure, Success>> createCar(CarModel car) {
    // TODO: implement createCar
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Success>> deleteCar(String id) {
    // TODO: implement deleteCar
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, List<CarModel>>> getCars() {
    // TODO: implement getCars
    throw UnimplementedError();
  }
}
