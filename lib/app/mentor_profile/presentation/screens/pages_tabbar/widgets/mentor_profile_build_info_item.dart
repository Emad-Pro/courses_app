import '../../../../../../core/import/app.dart';

class MentorProfileBuildInfoItem extends StatelessWidget {
  const MentorProfileBuildInfoItem({
    super.key,
    required this.count,
    required this.text,
  });
  final int count;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: TextStyle(
              fontSize: getResponsiveFontSize(context, fontSize: 20),
              fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: getResponsiveFontSize(context, fontSize: 18),
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5)),
        )
      ],
    );
  }
}
