import 'package:amjad_smartich_solutions/features/home/domain/entities/cosmetic_clinics_entity.dart';
import 'package:equatable/equatable.dart';

enum StateClass { loading, loaded, error }

class ConsmeticClinicsState extends Equatable {
  final CosmeticClinicsEntity? cosmeticClinicsEntity;
  final StateClass stateClass;
  final String message;

  const ConsmeticClinicsState({
    required this.cosmeticClinicsEntity,
    required this.stateClass,
    required this.message,
  });

  factory ConsmeticClinicsState.init() {
    return const ConsmeticClinicsState(
      cosmeticClinicsEntity: null,
      stateClass: StateClass.loading,
      message: "",
    );
  }

  @override
  List<Object?> get props => [
        cosmeticClinicsEntity,
        stateClass,
        message,
      ];

  ConsmeticClinicsState copyWith({
    CosmeticClinicsEntity? cosmeticClinicsEntity,
    StateClass? stateClass,
    String? message,
  }) {
    return ConsmeticClinicsState(
      cosmeticClinicsEntity:
          cosmeticClinicsEntity ?? this.cosmeticClinicsEntity,
      stateClass: stateClass ?? this.stateClass,
      message: message ?? this.message,
    );
  }
}
