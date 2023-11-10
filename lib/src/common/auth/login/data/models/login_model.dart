import 'package:car_dealership/src/common/auth/login/domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel extends LoginEntity {
  const LoginModel({required super.email, required super.password});

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
