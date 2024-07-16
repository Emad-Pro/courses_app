import 'package:courses_app/app/main/layouts/home_layout/presentation/controller/home_cubit.dart';
import '../../../../../../core/import/app.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            const FilterAppbarWidget(),
            FilterCheckCourceSelectCategory(
              homeState: state,
            ),
            FilterSortByListViewWidget(
              homeState: state,
            ),
            FilterSliderPriceWidget(
              homeState: state,
            ),
            const FilterActionButtonsBottom()
          ],
        );
      },
    );
  }
}
