
import 'package:chopper/chopper.dart';
import 'package:samapp/data/built_value_converter.dart.dart';
import 'package:built_collection/built_collection.dart';

import 'package:http/http.dart' as darthttp;
import 'package:samapp/model/index.dart';
import 'package:samapp/utils/Constants.dart';
import 'package:samapp/utils/sharedpreference.dart';

import 'package:samapp/utils/httpclients/http_client_base.dart'
// ignore: uri_does_not_exist
if (dart.library.html) 'package:samapp/utils/httpclients/http_client_web.dart'
// ignore: uri_does_not_exist
if (dart.library.io) 'package:samapp/utils/httpclients/http_client_nonweb.dart';



part 'post_api_service.chopper.dart';

@ChopperApi()
abstract class PostApiService extends ChopperService {
  /// POST REQUESTS
  @Post(path: '/auth/dash_login')
  Future<Response<AuthenticationResponse>> authenticate( @Body() AuthenticationRequest body);

  @Post(path: '/auth/app_login')
  Future<Response> requestOtpToken(@Body()OtpRequest body);

  @Post(path: '/auth/app_user_verification')
  Future<Response<AuthenticationResponse>> verifyOtpToken(@Body() OtpRequest body);

  @Post(path: '/posm_campaign_question/save_answers')
  Future<Response> submitAnswers(@Body() BuiltList<Example> body);




  static PostApiService create() {
    final darthttp.BaseClient dartClient = createHttpClient();
    
    final client = ChopperClient(
      baseUrl: Constants.BASE_URL,
      services: [_$PostApiService()],
      client: dartClient,
      converter: BuiltValueConverter(),
      interceptors: [
        _addQuery,
        HeadersInterceptor({'Cache-control': 'no-cache', }),
        HeadersInterceptor({'Content-Type': 'application/json'}),
        HeadersInterceptor({'Accept': '*/*'}),
        HttpLoggingInterceptor(),
        (Response response) async{
          if(response.statusCode == 401) {
            SharedPreference sharedPref = SharedPreference.getInstance();
            sharedPref.clearSF();
          }
          return response;
        },
      ],
    );

    return _$PostApiService(client);
  }
}

Future<Request> _addQuery(Request req) async {
  SharedPreference sharedPref = SharedPreference.getInstance();
   String n = await sharedPref.getStringValuesSF(enumKey.BASE_64_EncodedAuthenticationKey.toString());
  final params = Map<String, dynamic>.from(req.parameters);

  final header = new Map<String, String>.from(req.parameters);
  header['Authorization'] = 'Bearer $n';
  return req.copyWith(parameters: params, headers: header);
}


