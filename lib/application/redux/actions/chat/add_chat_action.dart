import 'package:async_redux/async_redux.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/domain/entities/chat/chat.dart';

class AddChatAction extends ReduxAction<AppState> {
  final Chat chat;

  AddChatAction({
    required this.chat,
  });

  @override
  AppState reduce() {
    final List<Chat> stateChats = state.contentState?.chats ?? <Chat>[];
    stateChats.add(chat);
    final AppState newState =
        state.copyWith.contentState!.call(chats: stateChats);

    return newState;
  }
}
