import 'package:courses_app/core/import/app.dart';

class CustomButtonSelectionWidget extends StatelessWidget {
  const CustomButtonSelectionWidget(
      {super.key,
      required this.isSelected,
      required this.title,
      this.color,
      this.onTap});

  final bool isSelected;
  final String title;
  final Color? color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: isSelected
                  ? color ?? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onSurface.withOpacity(0.03),
              borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 18),
                  //   fontWeight: FontWeight.w500,
                  color: isSelected
                      ? color != null
                          ? Colors.white
                          : Theme.of(context).colorScheme.surface
                      : Theme.of(context).colorScheme.onSurface),
            ),
          ),
        ),
      ),
    );
  }
}
