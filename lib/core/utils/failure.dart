abstract class Failure {
  final String message;
  final dynamic error;

  const Failure(this.message, {this.error});

  @override
  String toString() => message;
}

class ServerFailure extends Failure {
  const ServerFailure(super.message, {super.error});
}

class CacheFailure extends Failure {
  const CacheFailure(super.message, {super.error});
}

class NetworkFailure extends Failure {
  const NetworkFailure(super.message, {super.error});
}

class UnknownFailure extends Failure {
  const UnknownFailure(super.message, {super.error});
}
