import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core/import/app.dart';

class ReviewRatingWiget extends StatelessWidget {
  const ReviewRatingWiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const SizedBox(height: 22),
          const Text(
            'Please give your rating with us',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star_rounded,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          const SizedBox(height: 22),
        ],
      ),
    );
  }
}
