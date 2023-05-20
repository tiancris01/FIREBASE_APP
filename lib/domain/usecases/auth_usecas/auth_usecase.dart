import 'package:either_dart/either.dart';

import 'package:firebase/app/helpers/server_filure.dart';
import 'package:firebase/domain/entities/session/session.dart';

abstract class AuthUseCase {
  Future<Either<ServerFailure, Session>> login(String email, String password);

  Future<Either<ServerFailure, Session>> logout();

  Future<Either<ServerFailure, Session>> signUp(String email, String password);
}
