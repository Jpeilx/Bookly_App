import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Text('hello')// NewestBookListViewItem(),
      ),
      itemCount: 20,
    );
  }
}
