import 'package:courses_app/core/import/app.dart';

import 'review_button_widget.dart';
import 'show_model_sheet_reivew/review_add_success_show_modal_widget.dart';

class ReviewActionsButtonWidget extends StatelessWidget {
  const ReviewActionsButtonWidget({super.key, this.checkValue});
  final bool? checkValue;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          ReviewButtonWidget(
            title: "Cancel",
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            width: 10,
          ),
          ReviewButtonWidget(
            checkValue: checkValue!,
            textColor: Colors.white,
            title: "Submit",
            onTap: checkValue != null
                ? checkValue == true
                    ? () {
                        showModalBottomSheet(
                            showDragHandle: true,
                            context: context,
                            builder: (context) =>
                                ReviewAddSuccessShowModalWidget());
                      }
                    : null
                : null,
          ),
        ],
      ),
    );
  }
}
