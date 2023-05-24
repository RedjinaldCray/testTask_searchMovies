import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_movies/src/data/movies/movies_repository.dart';
import 'package:search_movies/src/domain/movies/movie.dart';

part 'search_screen_bloc.freezed.dart';

@freezed
class SearchScreenEvent with _$SearchScreenEvent {
  const SearchScreenEvent._();

  const factory SearchScreenEvent.init() = _InitSearchScreenEvent;

  const factory SearchScreenEvent.changeSearchText(String value) =
      _ChangeSearchTextSearchScreenEvent;

  const factory SearchScreenEvent.fetchMovies() = _FetchMoviesSearchScreenEvent;

  const factory SearchScreenEvent.resetPage() = _ResetPageSearchScreenEvent;
}

@freezed
class SearchScreenState with _$SearchScreenState {
  const SearchScreenState._();

  const factory SearchScreenState(
      {@Default(<Movie>[]) List<Movie> movies,
      @Default(<Movie>[]) List<Movie> newMovies,
      @Default('') String searchText,
      @Default(0) int lastPage,
      @Default(false) bool isLoading}) = _SearchScreenState;
}

class SearchScreenBLoC extends Bloc<SearchScreenEvent, SearchScreenState> {
  SearchScreenBLoC(MoviesRepository moviesRepository)
      : _moviesRepository = moviesRepository,
        super(const SearchScreenState()) {
    on<_InitSearchScreenEvent>(_init);
    on<_ChangeSearchTextSearchScreenEvent>(_changeSearchText);
    on<_FetchMoviesSearchScreenEvent>(_fetchMovies);
    on<_ResetPageSearchScreenEvent>(_resetPage);
  }

  final MoviesRepository _moviesRepository;

  Future<void> _init(
      _InitSearchScreenEvent event, Emitter<SearchScreenState> emit) async {}

  Future<void> _changeSearchText(_ChangeSearchTextSearchScreenEvent event,
      Emitter<SearchScreenState> emit) async {
    emit(state.copyWith(searchText: event.value));
  }

  Future<void> _fetchMovies(_FetchMoviesSearchScreenEvent event,
      Emitter<SearchScreenState> emit) async {
    print('trwtr');
    if (!state.isLoading) {
      emit(state.copyWith(isLoading: true));
      final movies = await _moviesRepository.getMovies(
          page: state.lastPage + 1,
          searchText: state.searchText.length > 2 ? state.searchText : null);
      emit(state.copyWith(
          movies: [...state.movies, ...movies],
          newMovies: movies,
          lastPage: state.lastPage + 1,
          isLoading: false));
    }
  }

  Future<void> _resetPage(_ResetPageSearchScreenEvent event,
      Emitter<SearchScreenState> emit) async {
    emit(state.copyWith(lastPage: 0, movies: [], newMovies: []));
  }
}
