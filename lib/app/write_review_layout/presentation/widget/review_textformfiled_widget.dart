import 'package:courses_app/core/import/app.dart';

import '../../../chat_layout/presentation/method/outline_input_border.dart';
import '../controller/cubit/review_cubit.dart';

class ReviewTextFormFiledWidget extends StatelessWidget {
  const ReviewTextFormFiledWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final reviewCubit = context.read<ReviewCubit>();
    return SliverToBoxAdapter(
      child: Column(
        children: [
          TextFormField(
            controller: reviewCubit.commentController,
            onChanged: (val) {
              reviewCubit.checkCommentText();
            },
            decoration: InputDecoration(
              enabledBorder: outlineInputBorder(context),
              focusedBorder: outlineInputBorder(context),
              hintStyle: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 18)),
              hintText: 'Add a Comment',
              border: outlineInputBorder(context),
            ),
            maxLines: 5,
          ),
          const SizedBox(height: 24)
        ],
      ),
    );
  }
}
