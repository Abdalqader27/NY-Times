class AppException<OriginalException> implements Exception {
  const AppException({required String message, required this.exception}) : _message = message;

  const AppException.unknown({required this.exception}) : _message = 'unknown';

  final OriginalException exception;
  final String _message;

  String get message => _message;

  AppException copyWith({
    OriginalException? exception,
    String? message,
  }) {
    return AppException(
      exception: exception ?? this.exception,
      message: message ?? _message,
    );
  }
}

enum AppNetworkExceptionReason { canceled, timedOut, responseError, noInternet, serverError }

class AppNetworkException<OriginalException extends Exception> extends AppException<OriginalException> {
  /// Create a network exception.
  AppNetworkException({
    required this.reason,
    required OriginalException exception,
  }) : super(exception: exception, message: reason.name);

  AppNetworkException._({
    required this.reason,
    required OriginalException exception,
    required String message,
  }) : super(exception: exception, message: message);

  /// The reason the network exception occurred.
  final AppNetworkExceptionReason reason;

  @override
  AppNetworkException copyWith({OriginalException? exception, String? message}) {
    return AppNetworkException._(
        reason: reason, exception: exception ?? this.exception, message: message ?? this.message);
  }
}

class AppNetworkResponseException<OriginalException extends Exception, DataType>
    extends AppNetworkException<OriginalException> {
  AppNetworkResponseException({
    required OriginalException exception,
    this.statusCode,
    this.data,
  }) : super(
          reason: AppNetworkExceptionReason.responseError,
          exception: exception,
        );

  final DataType? data;
  final int? statusCode;

  @override
  String get message => data != null ? data.toString() : reason.name;

  bool get hasData => data != null;

  /// If the status code is null, returns false. Otherwise, allows the
  /// given closure [evaluator] to validate the given http integer status code.
  ///
  /// Usage:
  /// ```
  /// final isValid = responseException.validateStatusCode(
  ///   (statusCode) => statusCode >= 200 && statusCode < 300,
  /// );
  /// ```
  bool validateStatusCode(bool Function(int statusCode) evaluator) {
    final statusCode = this.statusCode;
    if (statusCode == null) return false;
    return evaluator(statusCode);
  }
}

extension AppExceptionExt on AppException {
  bool get noInternetConnection => isThis(AppNetworkExceptionReason.noInternet);

  bool get timedOut => isThis(AppNetworkExceptionReason.timedOut);

  bool isThis(AppNetworkExceptionReason reason) {
    if (this is AppNetworkException<dynamic>) {
      final e = this as AppNetworkException;
      return e.reason == reason;
    }
    return false;
  }
}
