



import 'package:dartz/dartz.dart';
import 'package:movie_application/core/failures/failures.dart';
import 'package:movie_application/features/domain/entities/movie_entity.dart';

abstract class IMovieRepository {
  Future<Either<Failure, List<MovieEntity>>> getMovieList(String title);
  Future<Either<Failure, List<MovieEntity>>> getMovieDetails(String title);
  Future<Either<Failure, List<MovieEntity>>> getSearchedMovies(String searchText);

}