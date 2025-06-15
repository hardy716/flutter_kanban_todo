mixin ApiCallMixin {
  Future<void> call<T> (Future<T> Function() execute, {
    void Function()? onInit,
    void Function(T)? onDone,
  }) async {
    onInit?.call();
    final result = await execute();
    onDone?.call(result);
  }

/// TODO: retry, delay, throttle, performance, log...
}