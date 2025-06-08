import 'dart:async';

class ApiException implements Exception {
  final int code;
  final String message;

  ApiException({required this.code, required this.message});

  @override
  String toString() => 'ApiException(code: $code, message: $message)';
}

extension ApiExtension<T> on Future<T> {
  Future<T> throwIfTimeOut({
    Duration? timeout,
    String timeoutMessage = '요청 시간이 초과되었습니다.',
  }) {
    final duration = timeout ?? const Duration(seconds: 30);
    return this.timeout(
      duration,
      onTimeout: () => throw TimeoutException(timeoutMessage),
    );
  }
}