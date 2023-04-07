import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final String title;

  final String poster;
  final String year;

  const MovieEntity({
    required this.title,
    required this.poster,
    required this.year,
  });

  @override
  List<Object?> get props => [title, poster, year];

  @override
  bool get stringify => true;
}
