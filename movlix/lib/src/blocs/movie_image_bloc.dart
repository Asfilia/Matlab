import 'package:movlix/src/blocs/base.dart';
import 'package:movlix/src/model/item_model.dart';
import 'package:movlix/src/model/movie_image_model.dart';
import 'package:movlix/src/model/movie_detail_model.dart';
import 'package:rxdart/rxdart.dart';

class MovieImageBloc extends BaseBloc<MovieImageModel>{
  Stream<MovieImageModel> get movieImages => fetcher.stream;

  fetchMovieImages(int movieId) async{
    MovieImageModel itemModel = await repository.fetchMovieImages(movieId);
    fetcher.sink.add(itemModel);
  }
}

final movieImageBloc = MovieImageBloc();