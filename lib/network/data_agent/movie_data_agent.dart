import 'package:movie_app/data/vos/popularity_vos/popularity_vo.dart';

import '../../data/vos/movie_vos/result_vo.dart';
import '../response/movie_detail_response/movie_detail_response.dart';

abstract class MovieDataAgent {
  Future<List<MovieVO>?> getMoviesList();
  Future<List<PopularityVO>?> getPopularMovies();
  Future<MovieDetailsResponse?> getMovieDetails(int movieID);
}