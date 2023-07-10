// equatable package is used for value comparison
import 'package:equatable/equatable.dart';

class ApiFailure extends Error with EquatableMixin {
  final String message;

  ApiFailure(this.message);

  @override
  List<Object?> get props => [message];
}
