import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharing_cooks/app_service.dart';
import 'package:sharing_cooks/domain/entities/chat/message.dart';

class MarkAsRead extends StatelessWidget {
  final Message message;
  const MarkAsRead({Key? key, required this.message}) : super(key: key);

  final Icon _markRead = const Icon(
    Icons.mark_chat_read,
    color: Colors.indigo,
    size: 18.0,
  );

  final Icon _markUnRead = const Icon(
    Icons.mark_chat_unread,
    color: Colors.grey,
    size: 18.0,
  );

  Future<Widget> _getMark(BuildContext context) async {
    if (message.isMine == false) {
      if (message.markAsRead == false) {
        final AppService appService = context.read<AppService>();
        await appService.markAsRead(message.id);
      }

      return const SizedBox.shrink();
    }

    if (message.isMine == true) {
      if (message.markAsRead == true) {
        return _markRead;
      } else {
        return _markUnRead;
      }
    }

    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: _getMark(context),
      builder: (BuildContext ctx, AsyncSnapshot<Widget> snapshot) {
        if (snapshot.hasData) {
          return snapshot.data as Widget;
        }

        return const SizedBox.shrink();
      },
    );
  }
}
