import 'package:courses_app/core/import/app.dart';

import '../../../../../chat_layout/presentation/screens/chat_screen.dart';
import '../../domain/entitis/message_item.dart';

class MessageBuildListviewItem extends StatelessWidget {
  final MessageItem message;

  const MessageBuildListviewItem({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChatScreen()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(message.image),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    message.message,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: message.unreadCount > 0
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  message.time,
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                if (message.unreadCount > 0)
                  CircleAvatar(
                    radius: 13,
                    child: Text(
                      message.unreadCount.toString(),
                      style: TextStyle(
                        //     color: Colors.white,
                        fontSize: getResponsiveFontSize(context, fontSize: 14),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
