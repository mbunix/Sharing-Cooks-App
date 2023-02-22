import 'package:async_redux/async_redux.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/domain/entities/chat/chat.dart';

class ChatsViewModel extends Vm {
  final List<Chat> chats;
  ChatsViewModel({
    required this.chats,
  }) : super(
          equals: <Object?>[
            chats,
          ],
        );


  static ChatsViewModel fromStore(Store<AppState> store) {
    return ChatsViewModel(
      chats: store.state.contentState?.chats ?? <Chat>[],
    );
  }
}

class BottomNavViewModel extends Vm {
  final int currentIndex;

  BottomNavViewModel({
    required this.currentIndex,
  }) : super(
          equals: <Object?>[
            currentIndex,
          ],
        );

  static BottomNavViewModel fromStore(Store<AppState> store) {
    return BottomNavViewModel(
      currentIndex:
          store.state.bottomNavigationState?.currentBottomNavIndex ?? 0,
    );
  }
}
