import 'package:courses_app/core/import/app.dart';

import '../controller/mentor_cubit.dart';
import '../widget/mentor_appbar.dart';
import '../widget/mentor_details_info_pages.dart';
import '../widget/mentor_image_and_name.dart';
import '../widget/mentor_total_info_view.dart';

class MentorProfileScreen extends StatelessWidget {
  const MentorProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => MentorCubit(),
        child: BlocBuilder<MentorCubit, MentorState>(builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: CustomScrollView(
              slivers: [
                const MentorAppbar(),
                const MentorImageAndName(),
                const MentorTotalInfoView(),
                MentorDetailsInfoPages(
                  state: state,
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
