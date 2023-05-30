import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_genre_response.freezed.dart';
part 'movie_genre_response.g.dart';

@freezed
class MovieGenresResponse with _$MovieGenresResponse {
	const factory MovieGenresResponse({
List<Genres>? genres,
	}) = _MovieGenresResponse;

	factory MovieGenresResponse.fromJson(Map<String, dynamic> json) => _$MovieGenresResponseFromJson(json);
}

@freezed
class Genres with _$Genres {
	const factory Genres({
int? id,
String? name,
	}) = _Genres;

	factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
}