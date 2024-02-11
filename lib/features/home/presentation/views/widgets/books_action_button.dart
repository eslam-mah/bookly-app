import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(19),
                  bottomLeft:
                      Radius.circular(19)), // Adjust the radius as needed
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                '19.99€',
                style: Styles.text18.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(19),
                  bottomRight:
                      Radius.circular(19)), // Adjust the radius as needed
              color: Color(0xffEF8262),
            ),
            child: const Center(
              child: Text(
                'Free preview',
                style: Styles.text16,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
