import 'dart:convert';

import 'package:flutter_graphql_client/graph_client.dart';
import 'package:http/http.dart' as http;

final MockTestGraphQlClient mockGraphQlClient =
    MockTestGraphQlClient.withResponse(
  'idToken',
  'endpoint',
  http.Response('success response', 200),
);

class MockTestGraphQlClient extends IGraphQlClient {
  MockTestGraphQlClient();
  MockTestGraphQlClient.withResponse(
    String idToken,
    String endpoint,
    this.response,
  ) {
    super.idToken = idToken;
    super.endpoint = endpoint;
  }

  late final http.Response response;

  @override
  Future<http.Response> callRESTAPI({
    required String endpoint,
    required String method,
    Map<String, dynamic>? variables,
  }) {
    if (endpoint.contains('upload')) {
      return Future<http.Response>.value(
        http.Response(
          json.encode(
            <String, dynamic>{
              'id': '1r1idoAs54kbZ90l9KkHSK7GKva',
            },
          ),
          201,
        ),
      );
    }

    if (endpoint.contains('login_by_phone')) {
      return Future<http.Response>.value(
        http.Response(json.encode('mockLoginResponse'), 201),
      );
    }

   
    return Future<http.Response>.value(
      http.Response(json.encode(<String, dynamic>{}), 201),
    );
  }
}