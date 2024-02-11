import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout from Apiserver');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout from Apiserver');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('recieve timeout from Apiserver');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response?.data);
      case DioExceptionType.cancel:
        return ServerFailure('data from server was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('there was no internet connection');
      case DioExceptionType.badCertificate:
        return ServerFailure('there was a bad certificate');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected error, please tyr again!');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('error not found');
    } else if (statusCode == 500) {
      return ServerFailure('oops, data not found');
    } else {
      return ServerFailure('Unknown error occured');
    }
  }
}
