import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

class MonthYearParams extends Equatable {
  final String month;
  final String year;

  const MonthYearParams({required this.month, required this.year});

  @override
  List<Object?> get props => [];
}


class AlertParams extends Equatable {
  final int tab;
  final String page;

  const AlertParams({required this.tab, required this.page});

  @override
  List<Object?> get props => [];
}
