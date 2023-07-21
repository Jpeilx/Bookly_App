import 'package:flutter/cupertino.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) => SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Discover a New Book',
            textAlign: TextAlign.center,
          )),
    );
  }
}
