import '../../../../../../core/import/app.dart';

class MentorBuildReviewItem extends StatelessWidget {
  const MentorBuildReviewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/fake_image2.jpg"),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Peter Mark',
                      style: TextStyle(
                        fontSize: getResponsiveFontSize(context, fontSize: 18),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber[800],
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber[800],
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber[800],
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber[800],
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber[800],
                          size: 16,
                        ),
                        const Spacer(),
                        Text(
                          '04 Apr 2023',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
            style: TextStyle(
              fontSize: getResponsiveFontSize(context, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
