import 'package:amjad_smartich_solutions/core/const/image_path.dart';
import 'package:amjad_smartich_solutions/core/extensions/double_extensions.dart';
import 'package:amjad_smartich_solutions/core/extensions/widget_extensions.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/animation_list/custom_animation_listview.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/custom_text_button.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/widgets/title_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CosmeticClinicsWidget extends StatelessWidget {
  final double sizeIcons = 15.0;
  const CosmeticClinicsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TitleSection(
      text: "Cosmetic clinics",
      widget: SizedBox(
        height: 202.27.h,
        child: CustomAnimationListView(
          itemCount: 4,
          paddingHorizontal: 0,
          paddingVertical: 0,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 251.w,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Image.asset("${ImmagePath.cosmetic}0.png"),
                        4.0.width,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Raghad Cosmetics"),
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: sizeIcons,
                                    ),
                                    const Expanded(
                                      child: FittedBox(
                                        child: Text(
                                          "Damascus ,Al Shahbander",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomTextButton(
                          title: "Skin Care",
                          onPressed: () {},
                          isUnderLine: true,
                        ),
                      ],
                    ),
                  ),
                  5.0.hight,
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        Expanded(child: _customImage("1.png")),
                        2.0.width,
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(child: _customImage("2.png")),
                                    Expanded(child: _customImage("3.png")),
                                  ],
                                ),
                              ),
                              Expanded(child: _customImage("4.png"))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.heart, size: sizeIcons),
                              const Text(
                                "2,456 Likes",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.star, size: sizeIcons),
                              const Text(
                                "4.5 (38 Review)",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "more details",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ),
                ],
              ),
            ).shadow.staggerListHorizontal(index);
          },
        ),
      ),
      onPressed: () {},
    );
  }

  Widget _customImage(String image) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          "${ImmagePath.cosmetic}$image",
          fit: BoxFit.cover,
          height: double.maxFinite,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
