import '../../../../core/import/app.dart';
import '../../../../core/test/dash_chat_2.dart';
import '../controller/cubit/chat_cubit.dart';
import '../method/input_options.dart';
import '../method/message_options.dart';
import '../widget/chat_appbar_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ChatCubit(),
        child: BlocBuilder<ChatCubit, ChatsState>(
          builder: (context, state) {
            final chatCubit = context.read<ChatCubit>();
            return CustomScrollView(
              physics: const NeverScrollableScrollPhysics(),
              slivers: [
                const ChatAppBarWidget(),
                SliverFillRemaining(
                  hasScrollBody: true,
                  fillOverscroll: false,
                  child: DashChat(
                    messageOptions: messageOptions(context),
                    inputOptions: inputOptions(context),
                    currentUser: chatCubit.user,
                    onSend: (ChatMessage m) =>
                        chatCubit.messages().insert(0, m),
                    messages: chatCubit.messages(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
