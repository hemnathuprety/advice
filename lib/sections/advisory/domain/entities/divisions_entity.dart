import 'package:equatable/equatable.dart';

class DivisionsEntity extends Equatable {
  final List<String>? divisions;

  const DivisionsEntity({
    required this.divisions,
  });

  @override
  List<Object?> get props => [
        divisions,
      ];
}
