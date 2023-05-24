import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:search_movies/src/data/movies/movies_repository.dart';
import 'package:search_movies/src/domain/movies/movie.dart';
import 'package:search_movies/src/features/search_screen/bloc/search_screen_bloc.dart';
import 'package:search_movies/src/features/search_screen/components/movie_item.dart';
import 'package:search_movies/src/features/search_screen/components/search_app_bar.dart';
import 'package:search_movies/src/presentation/components/app_loader.dart';
import 'package:search_movies/src/presentation/components/app_text_field.dart';
import 'package:search_movies/src/presentation/components/clear_ink_well.dart';

@RoutePage()
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late SearchScreenBLoC _bLoC;
  late PagingController<int, Movie> _pagingController;
  late ScrollController _scrollController;

  @override
  void initState() {
    _bLoC = SearchScreenBLoC(context.read<MoviesRepository>())
      ..add(const SearchScreenEvent.init());
    _pagingController = PagingController(firstPageKey: 0);
    _pagingController.addPageRequestListener((pageKey) {
      _bLoC.add(const SearchScreenEvent.fetchMovies());
    });
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      final nextPageTrigger = 0.9 * _scrollController.position.maxScrollExtent;
      if (_scrollController.position.pixels > nextPageTrigger) {
        _bLoC.add(const SearchScreenEvent.fetchMovies());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    _scrollController.dispose();
    _bLoC.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) => FittedBox(
          child: BlocProvider.value(
            value: _bLoC,
            child: BlocConsumer<SearchScreenBLoC, SearchScreenState>(
              listenWhen: (previous, current) {
                if (previous.movies.length != current.movies.length) {
                  _pagingController.appendLastPage(current.newMovies);
                  return true;
                } else if (previous.searchText != current.searchText) {
                  if (previous.searchText.length == 2 &&
                      current.searchText.length == 3) {
                    _bLoC.add(const SearchScreenEvent.resetPage());
                  }

                  if (current.searchText.length > 2) {
                    _bLoC.add(const SearchScreenEvent.fetchMovies());
                  }
                }
                return false;
              },
              listener: (context, state) {},
              builder: (context, state) => Container(
                constraints: constraints,
                child: Scaffold(
                  appBar: SearchAppBar(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 60),
                      child: AppTextField(
                          hintText: 'What are we looking for?...',
                          onChange: (value) {
                            _bLoC
                                .add(SearchScreenEvent.changeSearchText(value));
                          },
                          onClear: () {
                            _bLoC
                              ..add(
                                  const SearchScreenEvent.changeSearchText(''))
                              ..add(const SearchScreenEvent.resetPage())
                              ..add(const SearchScreenEvent.fetchMovies());
                          }),
                    ),
                  ),
                  body: ClearInkWell(
                    onTap: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: Stack(
                      children: [
                        Container(
                            color: Colors.black.withOpacity(0.8),
                            height: constraints.maxHeight - 120,
                            width: constraints.maxWidth,
                            child: RefreshIndicator(
                              onRefresh: () => Future.sync(
                                () => _pagingController.refresh(),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: PagedListView<int, Movie>(
                                  scrollController: _scrollController,
                                  pagingController: _pagingController,
                                  builderDelegate: PagedChildBuilderDelegate<
                                          Movie>(
                                      noMoreItemsIndicatorBuilder: (context) =>
                                          const Padding(
                                            padding: EdgeInsets.only(top: 50),
                                            child: AppLoader(),
                                          ),
                                      itemBuilder: (context, item, index) {
                                        if (index < state.movies.length) {
                                          return MovieItem(
                                            movie: state.movies[index],
                                          );
                                        } else {
                                          return const SizedBox.shrink();
                                        }
                                      },
                                      newPageProgressIndicatorBuilder:
                                          (context) => const AppLoader()),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
