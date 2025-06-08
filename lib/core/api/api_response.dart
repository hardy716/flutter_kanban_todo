import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_exception.dart';
import 'api_status_code.dart';

part 'api_response.g.dart';
part 'api_response.freezed.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false, genericArgumentFactories: true)
class ApiResponseModel<T> {
  @JsonKey(name: 'code', defaultValue: StatusCode.success)
  StatusCode code;

  @JsonKey(name: 'message', defaultValue: 'OK')
  String message;

  @JsonKey(name: 'data')
  T? data;

  ApiResponseModel({
    this.code = StatusCode.success,
    this.message = 'OK',
    this.data,
  });

  factory ApiResponseModel.fromJson(
      Map<String, dynamic> json,
      T Function(Object?) fromJsonT,
      ) =>
      _$ApiResponseModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T) toJsonT) => _$ApiResponseModelToJson(this, toJsonT);

  ApiResponseEntity<E> toEntity<E>(E Function(T) convertData) {
    return ApiResponseEntity<E>(
      code: code,
      message: message,
      data: data != null ? convertData(data as T) : null,
    );
  }

  ApiException toException() {
    return ApiException(code: code.value, message: message);
  }
}

@freezed
class ApiResponseEntity<T> with _$ApiResponseEntity<T> {
  ApiResponseEntity._();

  factory ApiResponseEntity({
    required StatusCode code,
    required String message,
    T? data,
  }) = _ApiResponseEntity<T>;

  ApiResponseModel<E> toModel<E>(E Function(T) convertData) {
    return ApiResponseModel<E>(
      code: code,
      message: message,
      data: data != null ? convertData(data as T) : null,
    );
  }

  @override
  StatusCode get code => this.code;

  @override
  T? get data => this.data;

  @override
  String get message => this.message;
}

extension ApiResponseEntityExtension<T> on ApiResponseEntity<T> {
  ApiResponseModel<T> toModel() => ApiResponseModel<T>(
    code: code,
    message: message,
    data: data,
  );
}