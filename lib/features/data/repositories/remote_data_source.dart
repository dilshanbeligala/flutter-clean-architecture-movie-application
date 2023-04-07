import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:movie_application/core/errors/exeptions.dart';
import 'package:movie_application/features/data/models/movie_details_model.dart';
import 'package:movie_application/features/data/models/movie_model.dart';

abstract class IMovieRemoteDataSource {
  Future<MovieModel> getMovieList(String title);
  Future<MovieDetailsModel> getMovieDetails(String title);
  Future<MovieModel> getSearchedMovies(String searchText);
}

class MovieRemoteDataSource implements IMovieRemoteDataSource {
  final Dio dio;

  MovieRemoteDataSource(this.dio);

  @override
  Future<MovieModel> getMovieList(String title) async {
    try {
      final response =
          await dio.get('http://www.omdbapi.com/?apikey=38f4414c&s=avengers');
      final movies = MovieModel.fromJson(response.data);
      //print(movies.results);
      return movies;
    } on DioError catch (error) {
      if (error.response != null) {
        throw const ServerException('Something went wrong!');
      } else {
        throw const ConnectionException('No internet connection!');
      }
    }
  }

  @override
  Future<MovieDetailsModel> getMovieDetails(String title) async {
    try {
      final response =
          await dio.get('http://www.omdbapi.com/?apikey=38f4414c&t=avengers');
      final movies = MovieDetailsModel.fromJson(response.data);
      //print(movies.results);
      return movies;
    } on DioError catch (error) {
      if (error.response != null) {
        throw const ServerException('Something went wrong!');
      } else {
        throw const ConnectionException('No internet connection!');
      }
    }
  }

  @override
  Future<MovieModel> getSearchedMovies(String title) async {
    try {
      final response =
          await dio.get('http://www.omdbapi.com/?apikey=38f4414c&s=avengers');
      final movies = MovieModel.fromJson(response.data);
      //print(movies.results);
      return movies;
    } on DioError catch (error) {
      if (error.response != null) {
        throw const ServerException('Something went wrong!');
      } else {
        throw const ConnectionException('No internet connection!');
      }
    }
  }
}
