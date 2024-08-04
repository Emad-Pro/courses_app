import '../../../../core/import/app.dart';
import '../../../../core/widgets/custom_svg_image.dart';
import '../controller/cubit/video_player_cubit.dart';

class VideoPlayerHeaderControllerButton extends StatelessWidget {
  const VideoPlayerHeaderControllerButton({super.key, required this.state});
  final VideoPlayerState state;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: IconButton(
                onPressed: () {},
                icon: const CustomSvgImage(
                  imagePath: "assets/svg_icons/video_controller/arrow_down.svg",
                ),
              ),
            ),
            Text(
              "User Interface Design Essentials",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: getResponsiveFontSize(context, fontSize: 16)),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: IconButton(
                  onPressed: () {
                    context.read<VideoPlayerCubit>().toggleFullscreen();
                  },
                  icon: CustomSvgImage(
                      imagePath: !state.isFullscreen
                          ? "assets/svg_icons/video_controller/full_screen.svg"
                          : "assets/svg_icons/video_controller/quit_full_screen.svg")),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: IconButton(
                onPressed: () {},
                icon: const CustomSvgImage(
                  imagePath: "assets/svg_icons/video_controller/play_list.svg",
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
