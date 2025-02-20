import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetSpeechCall {
  static Future<ApiCallResponse> call({
    String? text = '',
    String? voiceId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "text": "${text}",
  "voice_id": "${voiceId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetSpeech',
      apiUrl: 'https://candrecf.app.n8n.cloud/webhook/getSpeech',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? fileUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mediaLink''',
      ));
}

class CloneVoiceCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    FFUploadedFile? files,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CloneVoice',
      apiUrl: 'https://api.elevenlabs.io/v1/voices/add',
      callType: ApiCallType.POST,
      headers: {
        'Xi-Api-Key': 'sk_8039688e4bc869308c1f86e67520f40abb093e1246e9208a',
      },
      params: {
        'name': name,
        'files': files,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetVoicesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetVoices',
      apiUrl: 'https://api.elevenlabs.io/v1/voices',
      callType: ApiCallType.GET,
      headers: {
        'Xi-Api-Key': 'sk_8039688e4bc869308c1f86e67520f40abb093e1246e9208a',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? voices(dynamic response) => getJsonField(
        response,
        r'''$.voices''',
        true,
      ) as List?;
  static List<String>? voiceId(dynamic response) => (getJsonField(
        response,
        r'''$.voices[:].voice_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? voiceName(dynamic response) => (getJsonField(
        response,
        r'''$.voices[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
