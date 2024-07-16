import 'package:courses_app/app/main/layouts/home_layout/presentation/controller/home_cubit.dart';
import 'package:courses_app/core/import/app.dart';

class FilterSliderPriceWidget extends StatelessWidget {
  const FilterSliderPriceWidget({super.key, required this.homeState});
  final HomeState homeState;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
          ),
          Text(
            "Price",
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 20),
                fontWeight: FontWeight.w700),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 55,
                  child:
                      Text("${homeState.sliderFilterPrice.start.round()} \$")),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: RangeSlider(
                    values: homeState.sliderFilterPrice,
                    min: 0,
                    max: 1000,
                    divisions: 10,
                    onChanged: (RangeValues values) {
                      context.read<HomeCubit>().changeFilterSliderPrice(values);
                    },
                  ),
                ),
              ),
              SizedBox(
                  width: 55,
                  child: Text("${homeState.sliderFilterPrice.end.round()} \$")),
            ],
          ),
        ],
      ),
    ));
  }
}
