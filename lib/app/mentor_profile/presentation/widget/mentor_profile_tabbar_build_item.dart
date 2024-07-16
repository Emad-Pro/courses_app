import '../../../../core/import/app.dart';
import '../../../../core/widgets/custom_button_selection_widget.dart';
import '../controller/mentor_cubit.dart';

class MentorProfileTabbarBuilItem extends StatelessWidget {
  const MentorProfileTabbarBuilItem(
      {super.key,
      required this.mentorState,
      required this.title,
      required this.index});
  final MentorState mentorState;
  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    final isSelected = mentorState.selectionTabIndex == index;
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: GestureDetector(
        onTap: () {
          context.read<MentorCubit>().changeTabbarPage(index);
        },
        child: CustomButtonSelectionWidget(
          isSelected: isSelected,
          title: title,
        ),
      ),
    );
  }
}
