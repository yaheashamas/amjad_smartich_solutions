import 'package:amjad_smartich_solutions/features/home/presentation/bloc/bottom_navigation_bar/bottom_navigation_bar_state.dart';
import 'package:bloc/bloc.dart';

class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {
  BottomNavigationBarCubit() : super(BottomNavigationBarState.init());
  changeIndex(int value) {
    emit(state.copyWith(index: value));
    print(state.index);
  }
}
