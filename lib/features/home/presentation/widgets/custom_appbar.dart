import 'package:amjad_smartich_solutions/core/const/image_path.dart';
import 'package:amjad_smartich_solutions/core/extensions/double_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        height: 149.53.h,
        color: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Image.asset("${ImmagePath.accessories}persoe_image.png"),
              10.0.width,
              Text(
                "Hi rama",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                      fontFamily: "Meditative",
                    ),
              ),
              const Spacer(),
              const Icon(CupertinoIcons.bell, color: Colors.white),
              10.0.width,
              const Icon(Icons.menu, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
