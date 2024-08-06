import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entitis/message_item.dart';

part 'message_state.dart';

class MessageCubit extends Cubit<MessageState> {
  MessageCubit() : super(MessageInitial());
  final List<MessageItem> messages = [
    const MessageItem(
        name: 'Cody Fisher',
        message: 'I am start my assignment today.',
        time: '2 min ago',
        unreadCount: 3,
        image:
            "https://fastly.picsum.photos/id/656/200/300.jpg?hmac=zNqhDDzELUTnZCZ7v7jsgm_qu5rVv4qCgahu6YqfG_A"),
    const MessageItem(
        name: 'Kathryn Murphy',
        message: 'See you buddy 😄',
        time: '32 min ago',
        unreadCount: 1,
        image:
            "https://fastly.picsum.photos/id/656/200/300.jpg?hmac=zNqhDDzELUTnZCZ7v7jsgm_qu5rVv4qCgahu6YqfG_A"),
    const MessageItem(
        name: 'Cameron Williamson',
        message: 'Okay, got it.',
        time: '3 hours ago',
        unreadCount: 0,
        image:
            "https://fastly.picsum.photos/id/656/200/300.jpg?hmac=zNqhDDzELUTnZCZ7v7jsgm_qu5rVv4qCgahu6YqfG_A"),
    const MessageItem(
        name: 'Leslie Alexander',
        message: 'share your location',
        time: 'Yesterday',
        unreadCount: 0,
        image:
            "https://fastly.picsum.photos/id/656/200/300.jpg?hmac=zNqhDDzELUTnZCZ7v7jsgm_qu5rVv4qCgahu6YqfG_A"),
    const MessageItem(
        name: 'Marvin McKinney',
        message: 'Wanna go outside someday?',
        time: 'Yesterday',
        unreadCount: 0,
        image:
            "https://fastly.picsum.photos/id/656/200/300.jpg?hmac=zNqhDDzELUTnZCZ7v7jsgm_qu5rVv4qCgahu6YqfG_A"),
    const MessageItem(
        name: 'Arlene McCoy',
        message: 'should have warned warlier',
        time: '4 days ago',
        unreadCount: 0,
        image:
            "https://fastly.picsum.photos/id/656/200/300.jpg?hmac=zNqhDDzELUTnZCZ7v7jsgm_qu5rVv4qCgahu6YqfG_A"),
  ];
}
