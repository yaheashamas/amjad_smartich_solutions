import 'package:amjad_smartich_solutions/core/di/di.dart';
import 'package:amjad_smartich_solutions/features/core/widgets/animation_list/custom_animation_column.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/consmetic_clinics/consmetic_clinics_cubit.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/slider/slider_cubit.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/widgets/cosmetic_clinics_section_widget.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/widgets/slider_section_widget.dart';
import 'package:amjad_smartich_solutions/features/login/presentation/widgets/background_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SliderCubit sliderCubit;
  late ConsmeticClinicsCubit consmeticClinicsCubit;

  @override
  void initState() {
    super.initState();
    sliderCubit = getIt.get<SliderCubit>();
    consmeticClinicsCubit = getIt.get<ConsmeticClinicsCubit>();
    consmeticClinicsCubit.getAll();
  }

  @override
  void dispose() {
    sliderCubit.close();
    consmeticClinicsCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sliderCubit),
        BlocProvider(create: (context) => consmeticClinicsCubit),
      ],
      child: const Stack(
        children: [
          BackgroundImages(),
          CustomAnimationColumn(
            children: [
              SliderWidget(),
              CosmeticClinicsWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
