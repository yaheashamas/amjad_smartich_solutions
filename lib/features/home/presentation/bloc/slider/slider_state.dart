import 'package:equatable/equatable.dart';

class SliderState extends Equatable {
  final int index;
  final int length;

  const SliderState({
    required this.index,
    required this.length,
  });

  factory SliderState.init() {
    return const SliderState(
      index: 0,
      length: 4,
    );
  }

  @override
  List<Object?> get props => [index,length];

  SliderState copyWith({
    int? index,
    int? length,
  }) {
    return SliderState(
      index: index ?? this.index,
      length: length ?? this.length,
    );
  }
}
