import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 17,
        ),
        Text(
          ' (4.8) (2396)',
          style: Styles.text16,
        ),
        SizedBox(
          width: 9,
        ),
        // SizedBox(
        // width: MediaQuery.of(context).size.width * .22,
        //child: const Text(
        //'(2396)',
        //style: Styles.text14,
        //overflow: TextOverflow.ellipsis,
        //),
        //)
      ],
    );
  }
}
