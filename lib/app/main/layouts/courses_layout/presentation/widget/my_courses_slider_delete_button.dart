import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../../../../core/import/app.dart';
import 'my_corses_delete_show_model.dart';

class MyCoursesSliderDeleteButton extends StatelessWidget {
  const MyCoursesSliderDeleteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      borderRadius: BorderRadius.circular(10),
      backgroundColor: const Color.fromARGB(255, 237, 181, 181),
      foregroundColor: Colors.red,
      icon: Icons.delete,
      flex: 1,
      onPressed: (BuildContext context) {
        showModalBottomSheet(
            showDragHandle: true,
            context: context,
            builder: (context) => MyCoursesDeleteShowModel());
      },
    );
  }
}
