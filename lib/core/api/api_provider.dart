import '../core.dart';

part 'api_provider.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final Dio dio = Dio(
    BaseOptions(baseUrl: const String.fromEnvironment('BASE_URL')),
  );
  dio.interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true));
  dio.interceptors.add(
    QueuedInterceptorsWrapper(
      onRequest: (options, requestInterceptorHandler) {
        options.headers = {
          'Content-Type': Headers.jsonContentType,
        };
        requestInterceptorHandler.next(options);
      },
      onResponse: (response, requestInterceptorHandler) =>
          requestInterceptorHandler.next(response),
      onError: (error, requestInterceptorHandler) =>
          requestInterceptorHandler.next(error),
    ),
  );
  return dio;
}
