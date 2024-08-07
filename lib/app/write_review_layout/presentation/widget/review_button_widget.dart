import '../../../../core/import/app.dart';

class ReviewButtonWidget extends StatelessWidget {
  const ReviewButtonWidget(
      {super.key,
      this.checkValue = false,
      required this.title,
      required this.onTap});

  final bool checkValue;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: checkValue
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onSurface.withOpacity(0.1)),
          child: Center(child: Text(title)),
        ),
      ),
    );
  }
}
