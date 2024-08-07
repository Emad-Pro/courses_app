import '../../../../../../core/import/app.dart';
import '../../../../../../core/widgets/custom_button_selection_widget.dart';

class MyCoursesDeleteShowModelActionsButtonsWidgets extends StatelessWidget {
  const MyCoursesDeleteShowModelActionsButtonsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomButtonSelectionWidget(
                isSelected: false,
                title: "Cancel",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              child: CustomButtonSelectionWidget(
                isSelected: true,
                color: Colors.red[900],
                title: "Delete",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
