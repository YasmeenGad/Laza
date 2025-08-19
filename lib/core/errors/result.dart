import 'package:laza/core/errors/failure.dart';

sealed class Result<T> {}

class Success<T> implements Result<T> {
  final T data;

  Success(this.data);
}

class Error<T> implements Result<T> {
  final Failure failure;

  Error(this.failure);
}
