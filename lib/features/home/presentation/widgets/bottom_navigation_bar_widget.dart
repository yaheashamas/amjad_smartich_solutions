import 'package:amjad_smartich_solutions/features/home/presentation/bloc/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'package:amjad_smartich_solutions/features/home/presentation/bloc/bottom_navigation_bar/bottom_navigation_bar_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final BottomNavigationBarCubit bottomNavigationBarCubit;
  const BottomNavigationBarWidget({
    super.key,
    required this.bottomNavigationBarCubit,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBarCubit, BottomNavigationBarState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return BottomNavigationBar(
          iconSize: 22,
          elevation: 10,
          currentIndex: state.index,
          onTap: (value) => bottomNavigationBarCubit.changeIndex(value),
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Theme.of(context).colorScheme.primary),
          unselectedLabelStyle: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Theme.of(context).colorScheme.primary),
          items: [
            _customBottomNaviationBarItem(context, CupertinoIcons.search),
            _customBottomNaviationBarItem(
                context, CupertinoIcons.creditcard_fill),
            _customBottomNaviationBarItem(context, CupertinoIcons.home),
            _customBottomNaviationBarItem(context, CupertinoIcons.heart),
            _customBottomNaviationBarItem(context, CupertinoIcons.person),
          ],
        );
      },
    );
  }

  BottomNavigationBarItem _customBottomNaviationBarItem(
    BuildContext context,
    IconData icon,
  ) {
    return BottomNavigationBarItem(
      label: "",
      icon: Icon(icon),
      activeIcon: Icon(
        icon,
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
