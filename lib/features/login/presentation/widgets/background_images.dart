import 'package:amjad_smartich_solutions/core/const/image_path.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/animation_list/custom_animation_column.dart';
import 'package:flutter/widgets.dart';

class BackgroundImages extends StatelessWidget {
  const BackgroundImages({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAnimationColumn(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("${ImmagePath.accessories}background_paper_1.png"),
        Image.asset("${ImmagePath.accessories}background_paper_2.png"),
      ],
    );
  }
}
