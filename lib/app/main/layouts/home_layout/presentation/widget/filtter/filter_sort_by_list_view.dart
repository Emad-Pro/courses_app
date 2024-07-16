import 'package:courses_app/app/main/layouts/home_layout/presentation/controller/home_cubit.dart';
import 'package:courses_app/core/import/app.dart';

class FilterSortByListViewWidget extends StatelessWidget {
  const FilterSortByListViewWidget({super.key, required this.homeState});
  final HomeState homeState;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
            ),
            Text(
              "Sort By",
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 20),
                  fontWeight: FontWeight.w700),
            ),
            Container(
              height: 70,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: context.read<HomeCubit>().filterSortByValues.length,
                itemBuilder: (context, index) {
                  return FilterSortBuilditemWidget(
                    homeState: homeState,
                    filterSortByPrice:
                        context.read<HomeCubit>().filterSortByValues[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
