import 'package:bookly/features/home/presentation/views/widgets/list_item.dart';
import 'package:flutter/material.dart';

class SameBookList extends StatelessWidget {
  const SameBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.137,
      child: ListView.builder(
          clipBehavior: Clip.none,
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Text('data'),
              // child: ListItem(
              // booksModel: ,
              // ),
            );
          }),
    );
  }
}
