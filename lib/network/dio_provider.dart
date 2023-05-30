import 'package:dio/dio.dart';
import 'package:http_certificate_pinning/http_certificate_pinning.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioProvider {
  static Future<Dio> newInstant() async {
    BaseOptions options = BaseOptions(
        baseUrl: "https://api.themoviedb.org/3/",
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {'content-type': 'application/json'});

    var dio = Dio(options)
      ..interceptors.add(PrettyDioLogger(requestHeader: true))
      ..interceptors.add(CertificatePinningInterceptor(allowedSHAFingerprints: [
        "92:67:7A:0E:B0:F8:8B:82:47:84:90:4D:BB:42:06:49:2E:69:45:27:DF:18:53:02:B9:BF:61:FD:3B:72:4B:F9"
      ]));

    return dio;
  }
}
