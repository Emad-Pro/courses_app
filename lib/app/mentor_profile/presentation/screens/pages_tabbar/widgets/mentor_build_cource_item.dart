import '../../../../../../core/import/app.dart';

class MentorBuildCourceItem extends StatelessWidget {
  const MentorBuildCourceItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.06),
            borderRadius: BorderRadius.circular(10)),
        height: 130,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/fake_image.jpg",
                  width: 100,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3.5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Theme.of(context).colorScheme.primary),
                      child: Text(
                        "UI/UX Design".toUpperCase(),
                        style: TextStyle(
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 14),
                            color: Theme.of(context).colorScheme.surface),
                      ),
                    ),
                    Text(
                      "User Interface Design Essentials",
                      style: TextStyle(
                        fontSize: getResponsiveFontSize(context, fontSize: 20),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber[700]),
                        const SizedBox(width: 4),
                        const Text(
                          '24 (50 Reviews)',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "75 \$",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
