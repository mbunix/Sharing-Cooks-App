import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sharing_cooks/app_service.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/application/redux/view_models/chat/chats_view_model.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/chat_bubble.dart';
import 'package:sharing_cooks/domain/entities/chat/chat.dart';
import 'package:sharing_cooks/domain/entities/chat/message.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/inputs/custom_text_input_field.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> submit(AppService appService) async {
    final String text = controller.text;

    if (text.isEmpty) {
      return;
    }

    if (formKey.currentState != null && formKey.currentState!.validate()) {
      formKey.currentState!.save();

      await appService.saveMessage(text);

      controller.text = '';
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppService appService = context.read<AppService>();
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: StreamBuilder<List<Message>>(
                stream: appService.getMessages(),
                builder: (
                  BuildContext context,
                  AsyncSnapshot<List<Message>> snapshot,
                ) {
                  if (snapshot.hasData) {
                    final List<Message> messages = snapshot.data!;

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: ListView.builder(
                              reverse: true,
                              itemCount: messages.length,
                              itemBuilder: (BuildContext context, int index) {
                                final Message message = messages[index];

                                return ChatBubble2(message: message);
                              },
                            ),
                          ),
                          // SafeArea(
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(8.0),
                          //     child: Form(
                          //       key: formKey,
                          //       child: TextFormField(
                          //         controller: controller,
                          //         decoration: InputDecoration(
                          //           labelText: 'Message',
                          //           suffixIcon: IconButton(
                          //             onPressed: () => submit(appService),
                          //             icon: const Icon(
                          //               Icons.send_rounded,
                          //               color: Colors.grey,
                          //             ),
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          const SizedBox(height: 40.0),
                        ],
                      ),
                    );
                  }
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(24.0),
                    child: StoreConnector<AppState, ChatsViewModel>(
                      converter: (Store<AppState> store) =>
                          ChatsViewModel.fromStore(store),
                      builder: (BuildContext context, ChatsViewModel vm) {
                        final List<Chat> chats = vm.chats;
                        final List<Widget> chatWidgets = <Widget>[];

                        if (chats.isNotEmpty) {
                          for (final Chat currentChat in chats) {
                            chatWidgets.add(
                              ChatItemWidget(
                                isReply:
                                    (currentChat.from?.isNotEmpty ?? false) &&
                                        currentChat.from != 'eugene',
                                title: currentChat.from ?? '',
                                body: currentChat.message ?? '',
                                assetPngPAth: profilePicPngPath,
                              ),
                            );
                          }
                        }

                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ...chatWidgets,
                          ],
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                width: MediaQuery.of(context).size.width,
                constraints: const BoxConstraints(
                  minHeight: 40,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 0.35,
                      decoration: BoxDecoration(
                        color: AppColors.blackTextColor.withOpacity(
                          0.5,
                        ),
                      ),
                    ),
                    smallVerticalSizedBox,
                    Form(
                      key: formKey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SvgPicture.asset(emojiIconSvgPath),
                          verySmallHorizontalSizedBox,
                          Expanded(
                            child: CustomTextInputField(
                              controller: controller,
                              hintText: 'Write a message...',
                              onFieldSubmitted: (String val) {
                                submit(appService);
                                // if (val.isNotEmpty) {
                                //   StoreProvider.dispatch<AppState>(
                                //     context,
                                //     AddChatAction(
                                //       chat: Chat(
                                //         from: 'eugene',
                                //         message: val,
                                //         to: 'ken',
                                //       ),
                                //     ),
                                //   );
                                //   controller.clear();
                                // }
                              },
                            ),
                          ),
                          verySmallHorizontalSizedBox,
                          SvgPicture.asset(addPhotoIconSvgPath),
                        ],
                      ),
                    ),
                    smallVerticalSizedBox,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatItemWidget extends StatelessWidget {
  final bool isReply;
  final String title;
  final String body;
  final String assetPngPAth;

  const ChatItemWidget({
    super.key,
    required this.isReply,
    required this.title,
    required this.body,
    required this.assetPngPAth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      width: double.infinity,
      child: isReply
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
                      image: AssetImage(assetPngPAth),
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
                      Text(
                        title,
                        style: boldSize12Text(Theme.of(context).primaryColor),
                      ),
                      smallVerticalSizedBox,
                      Text(
                        body,
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
                ),
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
                        body,
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
                      image: AssetImage(assetPngPAth),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
