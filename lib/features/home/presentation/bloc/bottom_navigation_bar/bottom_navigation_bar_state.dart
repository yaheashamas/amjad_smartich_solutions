import 'package:equatable/equatable.dart';

class BottomNavigationBarState extends Equatable {
  final int index;

  const BottomNavigationBarState({required this.index});

  factory BottomNavigationBarState.init() {
    return const BottomNavigationBarState(
      index: 2,
    );
  }

  @override
  List<Object?> get props => [index];

  BottomNavigationBarState copyWith({
    int? index,
  }) {
    return BottomNavigationBarState(
      index: index ?? this.index,
    );
  }
}
