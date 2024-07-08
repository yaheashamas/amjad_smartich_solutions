import 'package:amjad_smartich_solutions/features/home/presentation/bloc/slider/slider_state.dart';
import 'package:bloc/bloc.dart';

class SliderCubit extends Cubit<SliderState> {
  SliderCubit() : super(SliderState.init());
  changeIndex(int value) {
    emit(state.copyWith(index: value));
  }
}
