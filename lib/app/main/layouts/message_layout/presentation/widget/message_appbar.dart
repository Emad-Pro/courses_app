import 'package:courses_app/core/import/app.dart';

class MessageAppBar extends StatelessWidget {
  const MessageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      title: Text("Message"),
      centerTitle: true,
    );
  }
}
