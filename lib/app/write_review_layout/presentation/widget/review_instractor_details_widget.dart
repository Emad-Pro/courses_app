import 'package:courses_app/core/import/app.dart';

class ReviewInstractorDetailsWidget extends StatelessWidget {
  const ReviewInstractorDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        Text(
          'User Interface Design Essentials',
          style: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 18),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/fake_image2.jpg'), // Replace with actual image asset
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Johnson Mate',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Lead Designer'),
              ],
            ),
          ],
        )
      ],
    ));
  }
}
