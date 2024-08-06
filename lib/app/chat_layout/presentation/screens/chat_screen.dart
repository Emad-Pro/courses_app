import '../../../../core/import/app.dart';
import '../../../../core/test/dash_chat_2.dart';
import '../controller/cubit/chat_cubit.dart';
import '../widget/chat_appbar_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ChatUser user = ChatUser(
      id: '1',
      firstName: 'Charles',
      lastName: 'Leclerc',
    );
    ChatUser other = ChatUser(
      id: '2',
      firstName: 'Charles',
      lastName: 'Leclerc',
    );
    List<ChatMessage> messages = <ChatMessage>[
      ChatMessage(
        text: 'Hey!',
        user: user,
        createdAt: DateTime.now(),
      ),
      ChatMessage(
        text: 'Hey!',
        user: other,
        createdAt: DateTime.now(),
      ),
    ];
    return Scaffold(
      body: BlocProvider(
        create: (context) => ChatCubit(),
        child: BlocBuilder<ChatCubit, ChatsState>(
          builder: (context, state) {
            return CustomScrollView(
                physics: NeverScrollableScrollPhysics(),
                slivers: [
                  ChatAppBarWidget(),
                  SliverFillRemaining(
                    hasScrollBody: true,
                    fillOverscroll: false,
                    child: DashChat(
                      messageOptions: MessageOptions(showOtherUsersName: false),
                      inputOptions: InputOptions(
                        inputDecoration: InputDecoration(
                            hintText: "Say somthing",
                            prefixIcon: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: CustomSvgPictrue(
                                      colorFilter: ColorFilter.mode(
                                          Theme.of(context)
                                              .colorScheme
                                              .onSurface,
                                          BlendMode.srcIn),
                                      imagePath:
                                          "assets/svg_icons/cateogry/photography.svg"),
                                ),
                              ),
                            ),
                            enabledBorder: outlineInputBorder(context),
                            focusedBorder: outlineInputBorder(context),
                            border: outlineInputBorder(context)),
                        sendButtonBuilder: (send) {
                          return InkWell(
                            onTap: send,
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              padding: EdgeInsets.all(5),
                              child: CustomSvgPictrue(
                                  colorFilter: ColorFilter.mode(
                                      Theme.of(context).colorScheme.onSurface,
                                      BlendMode.srcIn),
                                  imagePath: "assets/svg_icons/chat/plain.svg"),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.primary,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          );
                        },
                      ),
                      currentUser: user,
                      onSend: (ChatMessage m) {
                        messages.insert(0, m);
                      },
                      messages: messages,
                    ),
                  ),
                ]);
            // return Column(
            //   children: [
            //     ChatListViewMessagesWidget(),
            //     ChatInputWidgets(),
            //   ],
            // );
          },
        ),
      ),
    );
  }
}

outlineInputBorder(context) => OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
          width: 0.5),
    );
