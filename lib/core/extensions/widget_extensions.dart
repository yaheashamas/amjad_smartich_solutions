import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

extension DoubleExtension on Widget {
  Widget get shadow => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          boxShadow: const [
            BoxShadow(
              color: Color(0xffF0F0F0),
              spreadRadius: 0,
              blurRadius: 2,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: this,
      );

  //stagger list view animation
  Widget staggerListHorizontal(int index) =>
      AnimationConfiguration.staggeredList(
        position: index,
        duration: const Duration(milliseconds: 350),
        child: SlideAnimation(
          horizontalOffset: 50.0,
          child: FadeInAnimation(
            child: this,
          ),
        ),
      );

  Widget staggerListVertical(int index) => AnimationConfiguration.staggeredList(
        position: index,
        duration: const Duration(milliseconds: 350),
        child: SlideAnimation(
          verticalOffset: 50.0,
          child: FadeInAnimation(
            child: this,
          ),
        ),
      );

  Widget staggeredGrid(int index) => AnimationConfiguration.staggeredGrid(
        columnCount: 2,
        position: index,
        duration: const Duration(milliseconds: 350),
        child: ScaleAnimation(child: this),
      );
}
