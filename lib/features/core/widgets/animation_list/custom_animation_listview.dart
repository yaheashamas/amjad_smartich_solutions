import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CustomAnimationListView extends StatelessWidget {
  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;
  final ScrollController? scrollController;
  final Axis scrollDirection;
  final double? separatedSize;
  final double paddingVertical;
  final double paddingHorizontal;
  final bool isScrollable;
  final bool isShowControlPlayer;

  const CustomAnimationListView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.isScrollable = true,
    this.scrollDirection = Axis.vertical,
    this.scrollController,
    this.separatedSize,
    this.paddingVertical = 20,
    this.paddingHorizontal = 10,
    this.isShowControlPlayer = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.separated(
        controller: scrollController,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
          vertical: paddingVertical,
          horizontal: paddingHorizontal,
        ),
        scrollDirection: scrollDirection,
        itemCount: itemCount,
        separatorBuilder: (context, index) => SizedBox(
          height: scrollDirection == Axis.vertical ? 15 : 0,
          width: scrollDirection == Axis.horizontal ? 10 : 0,
        ),
        itemBuilder: itemBuilder,
      ),
    );
  }
}
