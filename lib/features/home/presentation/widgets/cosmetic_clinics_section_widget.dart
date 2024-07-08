import 'package:amjad_smartich_solutions/core/const/image_path.dart';
import 'package:amjad_smartich_solutions/core/extensions/double_extensions.dart';
import 'package:amjad_smartich_solutions/core/extensions/widget_extensions.dart';
import 'package:amjad_smartich_solutions/core/router/route.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/animation_list/custom_animation_listview.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/custom_text_button.dart';
import 'package:amjad_smartich_solutions/features/home/domain/entities/cosmetic_clinics_entity.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/consmetic_clinics/consmetic_clinics_cubit.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/consmetic_clinics/consmetic_clinics_state.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/widgets/title_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        child: BlocBuilder<ConsmeticClinicsCubit, ConsmeticClinicsState>(
          builder: (context, state) {
            switch (state.stateClass) {
              case StateClass.loading:
                return const Center(child: CircularProgressIndicator());
              case StateClass.loaded:
                return CustomAnimationListView(
                  itemCount:
                      state.cosmeticClinicsEntity!.content!.venues!.length,
                  paddingHorizontal: 0,
                  paddingVertical: 0,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return customItemContainer(
                      context,
                      state.cosmeticClinicsEntity!.content!.venues![index],
                      () {
                        Navigator.pushNamed(context, RouteList.detailsScreen);
                      },
                    ).shadow.staggerListHorizontal(index);
                  },
                );
              default:
                return const SizedBox();
            }
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

  Widget customItemContainer(
    BuildContext context,
    Venues venues,
    Function()? onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
                        Text(
                          venues.user!.name!,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: sizeIcons,
                              ),
                              Expanded(
                                child: Text(
                                  venues.city!.name ?? "",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                        fontSize: 12,
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
                        Text(
                          "${venues.likes} Likes",
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
                        Text(
                          "${venues.rate} (Review)",
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
      ),
    );
  }
}
