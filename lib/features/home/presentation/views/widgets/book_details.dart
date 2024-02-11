import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'The jungle book',
          style: Styles.text30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.text18.copyWith(
                  fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
            )),
      ],
    );
  }
}
