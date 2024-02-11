import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .43,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          //width: MediaQuery.of(context).size.width * .2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.red,
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetData.test),
              )),
        ),
      ),
    );
  }
}
