import 'package:amjad_smartich_solutions/core/extensions/double_extensions.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleSection extends StatelessWidget {
  final String text;
  final Widget widget;
  final void Function()? onPressed;

  const TitleSection({
    super.key,
    required this.text,
    required this.widget,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: "Meditative",
                    fontSize: 22.sp,
                  ),
            ),
            CustomTextButton(title: "See more", onPressed: onPressed)
          ],
        ),
        21.0.hight,
        widget,
      ],
    );
  }
}
