import 'package:movie_application/features/data/data_sources/remote_data_source.dart';
import 'package:movie_application/features/domain/entities/movie_entity.dart';
import 'package:movie_application/core/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_application/features/domain/repositories/movie_repository.dart';

class MovieRepositoryImplementation implements IMovieRepository {
  final IMovieRemoteDataSource remoteDataSource;
    MovieRepositoryImplementation(this.remoteDataSource);

  @override
  Future<Either<Failure, List<MovieEntity>>> getMovieDetails(String title) {
    // TODO: implement getMovieDetails
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getMovieList(String title) {
    // TODO: implement getMovieList
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getSearchedMovies(String searchText) {
    // TODO: implement getSearchedMovies
    throw UnimplementedError();
  }
}