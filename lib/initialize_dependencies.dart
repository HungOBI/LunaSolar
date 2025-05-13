import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

import 'oauth2_interceptor.dart';

final getIt = GetIt.instance;
final oauth2Dio = Dio();

final dio = Dio();

final tokenProvider = Oauth2Manager<OAuthInfoMixin?>();
class DioApp {
  final Dio dioVault;
  final Dio dioServer;

  const DioApp({
    required this.dioVault,
    required this.dioServer,
  });
}

class OAuthInfoModel with OAuthInfoMixin {
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final String userId;
  @override
  final int leaseDuration;
  @override
  final bool renewable;

  OAuthInfoModel({
    required this.accessToken,
    required this.refreshToken,
    required this.userId,
    required this.leaseDuration,
    required this.renewable,
  });

  factory OAuthInfoModel.fromJson(Map<String, dynamic> json) {
    return OAuthInfoModel(
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
      userId: json['userId'],
      leaseDuration: json['leaseDuration'],
      renewable: json['renewable'],
    );
  }
}


Future<void> initializeDependencies() async {
  final baseURL = dotenv.env['API_URL']!;

  dio.options.baseUrl = baseURL;
  oauth2Dio.options.baseUrl = baseURL;
  //region local IO


  //endregion
  //region network server
  dio.interceptors.add(
    Oauth2Interceptor(
      dio: dio,
      oauth2Dio: oauth2Dio,
      pathRefreshToken: '/auth/refresh-token',
      tokenProvider: tokenProvider,
      parserJson: (map) => OAuthInfoModel.fromJson(Map<String, dynamic>.from(map)),
    ),
  );

  //endregion
  //region repo


  //endregion
  //region service

  //endregion
  //region state

  //endregion


}
