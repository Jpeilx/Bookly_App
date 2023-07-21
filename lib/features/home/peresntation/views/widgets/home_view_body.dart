import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'newest_books_list_view.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const Padding(
                padding: EdgeInsets.only(left: 24, bottom: 24),
                child: CustomListViewBuilder(),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, bottom: 10),
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: NewestBooksListView(),
          ),
        )
      ],
    );
  }
}
