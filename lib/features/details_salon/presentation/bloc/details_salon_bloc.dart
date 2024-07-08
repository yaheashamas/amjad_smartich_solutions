import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'details_salon_event.dart';
part 'details_salon_state.dart';

class DetailsSalonBloc extends Bloc<DetailsSalonEvent, DetailsSalonState> {
  DetailsSalonBloc() : super(DetailsSalonInitial()) {
    on<DetailsSalonEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
