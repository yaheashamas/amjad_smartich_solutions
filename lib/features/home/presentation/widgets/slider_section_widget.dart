import 'package:amjad_smartich_solutions/core/const/image_path.dart';
import 'package:amjad_smartich_solutions/core/extensions/double_extensions.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/slider/slider_cubit.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/slider/slider_state.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/widgets/title_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SliderCubit sliderCubit = context.read<SliderCubit>();

    return TitleSection(
      text: "Best offers",
      onPressed: () {},
      widget: BlocBuilder<SliderCubit, SliderState>(
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(
                height: 150.h,
                child: PageView.builder(
                  controller: PageController(
                    viewportFraction: 1,
                    initialPage: 0,
                  ),
                  itemCount: state.length,
                  onPageChanged: sliderCubit.changeIndex,
                  itemBuilder: (context, index) {
                    return image(context, state.length)[index];
                  },
                ),
              ),
              10.0.hight,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pagination(context, state.length, state.index),
              )
            ],
          );
        },
      ),
    );
  }

  List<Widget> image(BuildContext context, int lenght) {
    return List.generate(
      lenght,
      (index) => Stack(
        fit: StackFit.expand,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: Theme.of(context).colorScheme.primary),
            ),
            child: Image.asset(
              "${ImmagePath.sliderSection}slide.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  const Color(0xff4A4A4A).withOpacity(0.1),
                  const Color(0xff3C3C3C).withOpacity(0.9),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: DefaultTextStyle(
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                          ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Special Offer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "${ImmagePath.sliderSection}Vector.png",
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white),
                          ),
                          child: Text(
                            "Details",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> pagination(BuildContext context, int lenght, int indexOut) {
    return List.generate(
      4,
      (index) => AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: 8,
        width: index == indexOut ? 30 : 10,
        margin: EdgeInsets.only(right: 2.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: index == indexOut
              ? Theme.of(context).colorScheme.primary
              : Colors.grey,
        ),
      ),
    );
  }
}
