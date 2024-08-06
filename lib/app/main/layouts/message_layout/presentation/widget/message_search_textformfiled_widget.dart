import 'package:courses_app/core/import/app.dart';

import '../../../../../../core/widgets/custom_search_textformfiled.dart';

class MessageSearchTextFormFiledWidget extends StatelessWidget {
  const MessageSearchTextFormFiledWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.07)),
          child: const CustomSearchTextFormField()),
    );
  }
}
