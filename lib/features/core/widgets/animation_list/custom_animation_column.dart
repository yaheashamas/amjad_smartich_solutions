import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CustomAnimationColumn extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final double top;
  final double right;
  final double left;
  final double bottom;
  final Duration? duration;

  const CustomAnimationColumn({
    super.key,
    required this.children,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.top = 20,
    this.right = 16,
    this.left = 16,
    this.bottom = 20,
    this.duration = const Duration(milliseconds: 500),
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AnimationLimiter(
        child: Padding(
          padding: EdgeInsets.only(
            top: top,
            bottom: bottom,
            right: right,
            left: left,
          ),
          child: Column(
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: mainAxisAlignment,
            children: AnimationConfiguration.toStaggeredList(
              duration: duration,
              childAnimationBuilder: (widget) => SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: widget,
                ),
              ),
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
