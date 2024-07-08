import 'package:amjad_smartich_solutions/core/const/const_padding.dart';
import 'package:amjad_smartich_solutions/core/const/image_path.dart';
import 'package:amjad_smartich_solutions/core/di/di.dart';
import 'package:amjad_smartich_solutions/core/extensions/double_extensions.dart';
import 'package:amjad_smartich_solutions/core/router/route.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/animation_list/custom_animation_column.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/custom_elevated_button.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/custom_text_button.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/custom_text_form_field.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/consmetic_clinics/consmetic_clinics_state.dart';
import 'package:amjad_smartich_solutions/features/login/presentation/bloc/login_cubit/login_cubit.dart';
import 'package:amjad_smartich_solutions/features/login/presentation/bloc/token_cubit/token_cubit.dart';
import 'package:amjad_smartich_solutions/features/login/presentation/widgets/background_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginCubit loginCubit;
  bool _isInit = false;

  @override
  void initState() {
    super.initState();
    loginCubit = getIt.get<LoginCubit>();
  }

  @override
  void didChangeDependencies() {
    _initialed();
    super.didChangeDependencies();
  }

  void _initialed() async {
    if (!_isInit) {
      await Future.delayed(const Duration(milliseconds: 500));
      if (!mounted) return;
      if (TokenCubit().state != null) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          RouteList.mainScreen,
          (route) => false,
        );
      }
      _isInit = true;
    }
  }

  @override
  void dispose() {
    loginCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => loginCubit,
      child: Scaffold(
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
                    BlocBuilder<LoginCubit, LoginState>(
                      buildWhen: (previous, current) {
                        return previous.phoneNumber != current.phoneNumber;
                      },
                      builder: (context, state) {
                        return CustomTextFormField(
                          label: "Mobile",
                          textInputType: TextInputType.number,
                          onChanged: (value) =>
                              loginCubit.changePhoneNumber(value),
                          errorText: state.phoneNumber.isNotValid
                              ? state.phoneNumber.error
                              : null,
                        );
                      },
                    ),
                    30.0.hight,
                    BlocBuilder<LoginCubit, LoginState>(
                      buildWhen: (previous, current) {
                        return previous.password != current.password;
                      },
                      builder: (context, state) {
                        return CustomTextFormField(
                          label: "Password",
                          obscureText: true,
                          onChanged: (value) =>
                              loginCubit.changePassword(value),
                          errorText: state.password.isNotValid
                              ? state.password.error
                              : null,
                        );
                      },
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
                    BlocConsumer<LoginCubit, LoginState>(
                      listener: (context, state) {
                        if (state.stateClass == StateClass.lodinSuccessful) {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            RouteList.mainScreen,
                            (route) => false,
                          );
                        }
                      },
                      builder: (context, state) {
                        switch (state.stateClass) {
                          case StateClass.loading:
                            return const Center(
                                child: CircularProgressIndicator());
                          case StateClass.init:
                            return CustomElevatedButton(
                              title: "SIGN IN",
                              onPressed: state.isSubmitLogin
                                  ? () => loginCubit.login()
                                  : null,
                            );
                          case StateClass.error:
                            return TextButton.icon(
                              onPressed: () => loginCubit.initLoading(),
                              label: Text(state.message),
                              icon: const Icon(Icons.replay),
                            );
                          default:
                            return const SizedBox();
                        }
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
      ),
    );
  }
}
