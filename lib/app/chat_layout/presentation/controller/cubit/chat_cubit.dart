import 'package:bloc/bloc.dart';
import '../../../../../core/import/app.dart';
import '../../../../../core/test/dash_chat_2.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatsState> {
  ChatCubit() : super(const ChatsState());

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
  List<ChatMessage> messages() => [
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
}
