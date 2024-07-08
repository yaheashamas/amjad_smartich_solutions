import 'package:amjad_smartich_solutions/core/const/const_padding.dart';
import 'package:amjad_smartich_solutions/core/const/image_path.dart';
import 'package:amjad_smartich_solutions/core/extensions/double_extensions.dart';
import 'package:amjad_smartich_solutions/core/router/route.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/animation_list/custom_animation_column.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/custom_elevated_button.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/custom_text_button.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/custom_text_form_field.dart';
import 'package:amjad_smartich_solutions/features/login/presentation/widgets/background_images.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            const BackgroundImages(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ConstPadding.mainPaddingScreen,
              ),
              child: CustomAnimationColumn(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("${ImmagePath.logo}logo.png"),
                  32.0.hight,
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome back!"),
                        Text("log in using your email account to continue us")
                      ],
                    ),
                  ),
                  124.0.hight,
                  const CustomTextFormField(
                    label: "Mobile",
                  ),
                  30.0.hight,
                  const CustomTextFormField(
                    label: "Password",
                    errorText: "Please put anythinks",
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: CustomTextButton(
                      title: "Forget Password ?",
                      onPressed: () {},
                      isUnderLine: false,
                    ),
                  ),
                  169.0.hight,
                  CustomElevatedButton(
                    title: "SIGN IN",
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        RouteList.mainScreen,
                        (route) => false,
                      );
                    },
                  ),
                  CustomTextButton(
                    title: "Guest",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
