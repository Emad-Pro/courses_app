import 'package:equatable/equatable.dart';

class ChatContent extends Equatable {
  final String uId;
  final String date;
  final String text;
  const ChatContent(
      {required this.uId, required this.date, required this.text});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
