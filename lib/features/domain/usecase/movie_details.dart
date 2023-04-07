
import 'package:dartz/dartz.dart';
import 'package:movie_application/core/failures/failures.dart';
import 'package:movie_application/features/domain/repositories/movie_repository.dart';
import 'package:movie_application/features/domain/usecase/usecase.dart';

class GetMovieDetailUsecase
    implements MovieDetailUseCase<MovieDetailEntity, String> {
  final IMovieRepository repository;

  GetMovieDetailUsecase(this.repository);

  @override
  Future<Either<Failure, MovieDetailEntity>> call(title) async {
    return await repository.getMovieDetails(title);
  }
}