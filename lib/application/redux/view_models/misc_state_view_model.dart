import 'package:async_redux/async_redux.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/application/redux/states/misc_state.dart';

class MiscStateViewModel extends Vm {
  MiscStateViewModel({
    this.miscState,
    required this.wait,
  }) : super(
          equals: <Object?>[
            miscState,
            wait,
          ],
        );

  final MiscState? miscState;
  final Wait wait;

  factory MiscStateViewModel.fromStore(Store<AppState> store) {
    return MiscStateViewModel(
      miscState: store.state.miscState,
      wait: store.state.wait!,
    );
  }
}
