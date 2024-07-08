import 'package:amjad_smartich_solutions/core/di/di.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/bottom_navigation_bar/bottom_navigation_bar_state.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/pages/home_screen.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/widgets/bottom_navigation_bar_widget.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late BottomNavigationBarCubit bottomNavigationBarCubit;

  @override
  void initState() {
    super.initState();
    bottomNavigationBarCubit = getIt.get<BottomNavigationBarCubit>();
  }

  @override
  void dispose() {
    bottomNavigationBarCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bottomNavigationBarCubit,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(1.sw, 149.53.h),
          child: const CustomAppBar(),
        ),
        body: BlocBuilder<BottomNavigationBarCubit, BottomNavigationBarState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            return [
              const Center(child: Text("1")),
              const Center(child: Text("2")),
              const HomeScreen(),
              const Center(child: Text("4")),
              const Center(child: Text("5")),
            ][state.index];
          },
        ),
        bottomNavigationBar: BottomNavigationBarWidget(
          bottomNavigationBarCubit: bottomNavigationBarCubit,
        ),
      ),
    );
  }
}
