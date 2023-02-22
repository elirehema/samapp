// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$PostApiService extends PostApiService {
  _$PostApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PostApiService;

  @override
  Future<Response<AuthenticationResponse>> authenticate(
      AuthenticationRequest body) {
    final $url = '/auth/signin';
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AuthenticationResponse, AuthenticationResponse>($request);
  }

  @override
  Future<Response<dynamic>> requestOtpToken(OtpRequest body) {
    final $url = '/auth/app_login';
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AuthenticationResponse>> verifyOtpToken(OtpRequest body) {
    final $url = '/auth/app_user_verification';
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AuthenticationResponse, AuthenticationResponse>($request);
  }

  @override
  Future<Response<dynamic>> submitAnswers(BuiltList<Example> body) {
    final $url = '/posm_campaign_question/save_answers';
    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
