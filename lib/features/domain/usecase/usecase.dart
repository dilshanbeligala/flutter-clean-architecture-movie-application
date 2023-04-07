
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_application/core/failures/failures.dart';

// Type: what the usecase return (Output)
// Params: what is required to call API (Input)

abstract class UseCase<Output, Input> {
  Future<Either<Failure, List<Output>>> call(Input params);
}

abstract class MovieDetailUseCase<Output, Input> {
  Future<Either<Failure, Output>> call(Input params);
}



class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

class MovieParams extends Equatable {
  final int id;

  const MovieParams(this.id);

  @override
  List<Object?> get props => [id];
}

class MovieSearchParams extends Equatable {
  final int id;

  const MovieSearchParams(this.id);

  @override
  List<Object?> get props => [id];
}