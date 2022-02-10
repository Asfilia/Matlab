import 'package:movlix/src/blocs/base.dart';
import 'package:movlix/src/model/item_model.dart';
import 'package:rxdart/rxdart.dart';

class MovieListBloc extends BaseBloc<ItemModel> {
  Stream<ItemModel> get movieList =>fetcher.stream;

  fetchMovieList(String type) async{
    ItemModel itemModel = await repository.fetchMovieList(type);
    fetcher.sink.add(itemModel);
  }
}

final movieListBloc = MovieListBloc();