// Flutter imports:

import 'package:async_redux/async_redux.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/application/redux/view_models/app_entry_point_view_model.dart';
import 'package:sharing_cooks/domain/value_objects/constants.dart';
import 'package:sharing_cooks/presentation/core/sharing_cooks_app.dart';

class AppEntryPointViewModelFactory extends VmFactory<AppState, SHaringCooksApp> {
  @override
  AppEntryPointViewModel fromStore() {
    return AppEntryPointViewModel(
      idToken: UNKNOWN,
      userId: UNKNOWN,
    );
  }
}
