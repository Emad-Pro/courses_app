import 'package:bloc/bloc.dart';
import 'package:courses_app/app/chat_layout/domain/chat_content.dart';
import '../../../../../core/import/app.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatsState> {
  ChatCubit() : super(const ChatsState());
  final List<ChatContent> chatMessages = [
    const ChatContent(uId: "1", date: "12:12", text: "Hello World"),
    const ChatContent(
        uId: "2", date: "12:12", text: "Lorem ipsum dolor sit amet"),
    const ChatContent(
        uId: "1", date: "12:12", text: "consectetur adipiscing elit"),
    const ChatContent(
        uId: "2",
        date: "12:12",
        text:
            "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea"),
    const ChatContent(
        uId: "2",
        date: "12:12",
        text:
            "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore"),
    const ChatContent(uId: "2", date: "12:12", text: "Thanks"),
    const ChatContent(
        uId: "2",
        date: "12:12",
        text: "eu fugiat nulla pariatur. Excepteur sint"),
    const ChatContent(
        uId: "1", date: "12:12", text: "sunt in culpa qui officia deserunt"),
    const ChatContent(
        uId: "1", date: "12:12", text: "mollit anim id est laborum"),
    const ChatContent(uId: "2", date: "12:12", text: "OK!"),
  ];
}
