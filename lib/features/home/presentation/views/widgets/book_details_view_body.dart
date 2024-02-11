import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_view_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action_button.dart';
import 'package:bookly/features/home/presentation/views/widgets/similiar_book_list.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BookDetailsViewAppbar(),
              SizedBox(
                height: 34,
              ),
              BookDetailsItem(),
              SizedBox(
                height: 43,
              ),
              BookDetails(),
              SizedBox(
                height: 14,
              ),
              BookRating(),
              SizedBox(
                height: 37,
              ),
              BookActionButton(),
              SizedBox(
                height: 37,
              ),
            ],
          ),
          Text(
            'You can also like',
            style: Styles.text14.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          const SameBookList()
        ],
      ),
    );
  }
}
