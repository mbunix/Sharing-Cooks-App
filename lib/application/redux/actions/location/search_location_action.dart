import 'package:async_redux/async_redux.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';

class SearchLocationAction extends ReduxAction<AppState> {
  SearchLocationAction({
    required this.uri,
    this.headers,
  });

  final Uri uri;
  final Map<String, String>? headers;

  @override
  Future<AppState?> reduce() async {
    // final http.Response httpResponse = await http.get(uri, headers: headers);

    return state;
  }
}
