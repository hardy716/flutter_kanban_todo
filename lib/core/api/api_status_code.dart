import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

// Reference: RFC 7231 - Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content
// See: https://datatracker.ietf.org/doc/html/rfc7231

@JsonEnum(valueField: 'code')
enum StatusCode {
  // 2xx: Success
  @JsonValue(200)
  success(200),
  @JsonValue(206)
  partialContent(206),

  // 4xx: Client Errors
  @JsonValue(400)
  badRequest(400),
  @JsonValue(401)
  unauthorized(401),
  @JsonValue(403)
  forbidden(403),
  @JsonValue(404)
  notFound(404),
  @JsonValue(409)
  conflict(409),
  @JsonValue(422)
  unprocessableEntity(422),

  // 5xx: Server Errors
  @JsonValue(500)
  internalServerError(500),
  @JsonValue(501)
  notImplemented(501),
  @JsonValue(503)
  serviceUnavailable(503),

  // ---

  // 7xx: DIO-EXCEPTION
  @JsonValue(700)
  dioConnectionTimeout(700),
  @JsonValue(701)
  dioSendTimeout(701),
  @JsonValue(702)
  dioReceiveTimeout(702),
  @JsonValue(703)
  dioBadCertificate(703),
  @JsonValue(704)
  dioBadResponse(704),
  @JsonValue(705)
  dioCancel(705),
  @JsonValue(706)
  dioConnectionError(706),
  @JsonValue(707)
  dioUnknown(707);

  const StatusCode(this.value);

  final int value;

  static StatusCode getByCode(int value) {
    return StatusCode.values.firstWhere(
          (statusCode) => statusCode.value == value,
      orElse: () => StatusCode.internalServerError,
    );
  }

  static StatusCode getByDioExceptionType(DioExceptionType type) {
    switch (type) {
      case DioExceptionType.connectionTimeout:
        return StatusCode.dioConnectionTimeout;
      case DioExceptionType.sendTimeout:
        return StatusCode.dioSendTimeout;
      case DioExceptionType.receiveTimeout:
        return StatusCode.dioReceiveTimeout;
      case DioExceptionType.connectionError:
        return StatusCode.dioConnectionError;
      case DioExceptionType.badCertificate:
        return StatusCode.dioBadCertificate;
      case DioExceptionType.badResponse:
        return StatusCode.dioBadResponse;
      case DioExceptionType.cancel:
        return StatusCode.dioCancel;
      case DioExceptionType.unknown:
        return StatusCode.dioUnknown;
    }
  }
}