// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class MessageItem extends Equatable {
  final String name;
  final String message;
  final String time;
  final int unreadCount;
  final String image;
  const MessageItem(
      {required this.name,
      required this.message,
      required this.time,
      required this.unreadCount,
      required this.image});

  @override
  List<Object> get props {
    return [
      name,
      message,
      time,
      unreadCount,
      image,
    ];
  }
}
