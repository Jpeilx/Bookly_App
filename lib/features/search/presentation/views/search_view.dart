import 'package:flutter/material.dart';

import 'widgets/search_view_body.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchviewBody()),
    );
  }
}
