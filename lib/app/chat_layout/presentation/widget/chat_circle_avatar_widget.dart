import 'package:courses_app/core/import/app.dart';

import '../../../../core/test/dash_chat_2.dart';

class ChatCircleAvatarWidget extends StatelessWidget {
  const ChatCircleAvatarWidget({super.key, required this.user});
  final ChatUser user;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: CircleAvatar(
        radius: 22,
        backgroundImage:
            user.profileImage != null ? NetworkImage(user.profileImage!) : null,
        child: user.profileImage == null
            ? Text(
                style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 16)),
                "${user.firstName!.split("")[0]} ${user.lastName!.split("")[0]}",
              )
            : null,
      ),
    );
  }
}
