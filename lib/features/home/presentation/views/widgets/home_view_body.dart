import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/list_view_items.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                ListViewItem(),
                SizedBox(height: 49),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Newest Books',
                    style: Styles.text18,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: BestSellerListView(),
          )
        ],
      ),
    );
  }
}
