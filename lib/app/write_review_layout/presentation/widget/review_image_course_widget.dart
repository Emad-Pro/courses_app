import 'package:courses_app/core/import/app.dart';

class ReviewImageCourseWidget extends StatelessWidget {
  const ReviewImageCourseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset('assets/images/fake_image.jpg'),
        ), // Replace with actual image asset
      ),
    );
  }
}
