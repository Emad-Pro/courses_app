import 'package:courses_app/core/import/app.dart';

import '../controller/cubit/message_cubit.dart';
import 'message_build_listview_item.dart';

class MessageListViewWiget extends StatelessWidget {
  const MessageListViewWiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return MessageBuildListviewItem(
              message: context.read<MessageCubit>().messages[index]);
        },
        childCount: context.read<MessageCubit>().messages.length,
      ),
    );
  }
}
