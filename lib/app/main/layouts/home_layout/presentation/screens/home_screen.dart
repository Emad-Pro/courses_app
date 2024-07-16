import 'package:courses_app/app/main/layouts/home_layout/presentation/controller/home_cubit.dart';

import '../../../../../../core/import/app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Container(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.03),
          child: const CustomScrollView(slivers: [
            HomeHeaderWidgets(),
            HomeBodyExploreCategoryGridViewWidget(),
            HomeBodyFeaturedCoursesWidgets()
          ]),
        );
      },
    );
  }
}
