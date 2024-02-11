import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/books_model/books_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
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
      child: Row(
        children: [
          SizedBox(
            height: 105,
            child: AspectRatio(
                aspectRatio: 2.5 / 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    imageUrl: booksModel.volumeInfo.imageLinks!.thumbnail!,
                    fit: BoxFit.fill,
                  ),
                )),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  booksModel.volumeInfo.title!,
                  style: Styles.text20.copyWith(fontFamily: kgtspectrafine),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                booksModel.volumeInfo.authors![0],
                style: Styles.text14.copyWith(fontWeight: FontWeight.w300),
              ),
              Row(
                children: [
                  Text('Free',
                      style:
                          Styles.text20.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(
                    width: 44,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16,
                  ),
                  Text(
                    '${booksModel.volumeInfo.averageRating ?? 0}',
                    style: Styles.text16,
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .22,
                    child: Text(
                      '(${booksModel.volumeInfo.ratingsCount ?? 0})',
                      style: Styles.text14,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
