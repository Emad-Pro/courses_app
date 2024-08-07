import '../../../../core/import/app.dart';
import '../../../../core/test/dash_chat_2.dart';
import '../widget/chat_circle_avatar_widget.dart';

messageOptions(context) => MessageOptions(
    avatarBuilder: (user, onPressAvatar, onLongPressAvatar) {
      return ChatCircleAvatarWidget(user: user);
    },
    showOtherUsersName: false,
    borderRadius: 5,
    containerColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.08),
    textColor: Theme.of(context).colorScheme.onSurface,
    currentUserContainerColor: Theme.of(context).colorScheme.primary);
