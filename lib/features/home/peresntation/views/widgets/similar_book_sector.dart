import 'package:bookly/features/home/peresntation/views/widgets/similar_book_list_veiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBookSector extends StatelessWidget {
  const SimilarBookSector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30.h,
        ),
        Text('You can also like',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            )),
        const SizedBox(
          height: 16,
        ),
        const SimilarBoolListView(),
      ],
    );
  }
}
