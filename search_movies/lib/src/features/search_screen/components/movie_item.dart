import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:search_movies/src/domain/movies/movie.dart';

class MovieItem extends StatefulWidget {
  const MovieItem({super.key, required this.movie});

  final Movie movie;

  @override
  State<MovieItem> createState() => _MovieItemState();
}

class _MovieItemState extends State<MovieItem> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.movie.poster != null) ...[
                    SizedBox(
                      width: 100,
                      child: CachedNetworkImage(
                        fit: BoxFit.scaleDown,
                        imageUrl: widget.movie.poster!.previewUrl,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => SizedBox(
                          width: 20,
                          height: 20,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: CircularProgressIndicator(
                                strokeWidth: 2,
                                value: downloadProgress.progress),
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ],
                  SizedBox(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.movie.name,
                          style: const TextStyle(
                              fontSize: 25, color: Colors.white),
                        ),
                        const SizedBox(height: 5),
                        Text(widget.movie.shortDescription,
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white)),
                        if (widget.movie.budget != null) ...[
                          const SizedBox(height: 5),
                          Text(
                            'Бюджет: ${widget.movie.budget!.value} ${widget.movie.budget!.currency}',
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white),
                          )
                        ],
                        const SizedBox(height: 10),
                        Text('Время: ${widget.movie.movieLength} мин',
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white)),
                        const SizedBox(height: 10),
                        Text(
                          '${widget.movie.ageRating}+',
                          style: const TextStyle(
                              fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
