import 'package:bookly/core/utils/router.dart';
import 'package:bookly/features/home/data/models/books_model/books_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.booksModel,
  });
  final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Rout.kdetailsview);
      },
      child: AspectRatio(
          aspectRatio: 2.8 / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: booksModel.volumeInfo.imageLinks!.thumbnail!,
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
