import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/data/vos/popularity_vos/popularity_vo.dart';

import '../../../data/vos/movie_vos/result_vo.dart';
part 'popular_movie_response.g.dart';

@JsonSerializable()
class PopularMovieResponse {

  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<PopularityVO>? results;

  @JsonKey(name: 'total_pages')
  int? totalPages;

  @JsonKey(name: 'total_results')
  int? totalResults;

  PopularMovieResponse(
      {this.page,
        this.results,
        this.totalPages,
        this.totalResults});

  factory PopularMovieResponse.fromJson(Map<String, dynamic> json) =>
      _$PopularMovieResponseFromJson(json);
}