import 'package:flutter/material.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/entities/chat/message.dart';
import 'package:sharing_cooks/mark_as_read.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';

class ChatBubble extends StatelessWidget {
  final Message message;
  const ChatBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> chatContents = <Widget>[
      const SizedBox(width: 12.0),
      Flexible(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
            color: (message.id.isNotEmpty) &&
                    message.id == message.userFrom
                ? Colors.grey[600]
                : Colors.indigo[400],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            message.content,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      const SizedBox(width: 12),
      Text(message.createAt.toString(),
          style: const TextStyle(color: Colors.grey, fontSize: 12.0),),
      MarkAsRead(message: message),
      const SizedBox(width: 60),
    ];

    if (message.isMine) {
      chatContents = chatContents.reversed.toList();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
      child: Row(
        mainAxisAlignment: (message.isMine)
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: chatContents,
      ),
    );
  }
}

class ChatBubble2 extends StatelessWidget {
  final String? title;
  final String? body;
  final String? assetPngPAth;
  final Message? message;

  const ChatBubble2({
    super.key,
    this.message,
    this.title,
    this.body,
    this.assetPngPAth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      width: double.infinity,
      child: !(message?.isMine ?? false)
          ? Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 12.0),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        (message?.isMine ?? false)
                            ? profilePic2PngPath
                            : profilePicPngPath,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                smallHorizontalSizedBox,
                Container(
                  constraints: BoxConstraints(
                    minWidth: 30,
                    maxWidth: MediaQuery.of(context).size.width / 1.5,
                  ),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.chatBubbleColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      if (message?.isMine ?? false) ...<Widget>{
                        Text(
                          message?.userFrom ?? '',
                          style: boldSize12Text(Theme.of(context).primaryColor),
                        ),
                        smallVerticalSizedBox,
                      },
                      Text(
                        message?.content ?? '',
                        style: boldSize12Text(AppColors.secondaryTextColor),
                      ),
                      smallVerticalSizedBox,
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '13.40',
                          style: boldSize12Text(
                            AppColors.secondaryTextColor.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints(
                    minWidth: 30,
                    maxWidth: MediaQuery.of(context).size.width / 1.8,
                  ),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        message?.content ?? '',
                        style: boldSize12Text(AppColors.pureWhiteColor),
                      ),
                      smallVerticalSizedBox,
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '13.41',
                          style: boldSize12Text(
                            AppColors.pureWhiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                smallHorizontalSizedBox,
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        (message?.isMine ?? false)
                            ? profilePic2PngPath
                            : profilePicPngPath,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
