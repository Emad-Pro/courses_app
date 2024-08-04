import 'package:courses_app/app/video_player/presentation/controller/cubit/video_player_cubit.dart';
import 'package:courses_app/core/import/app.dart';

import '../../../../core/widgets/custom_svg_image.dart';

class VideoPlayerCenterControllerButton extends StatelessWidget {
  const VideoPlayerCenterControllerButton({super.key, required this.state});
  final VideoPlayerState state;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: IconButton(
              onPressed: () {},
              icon: const CustomSvgImage(
                imagePath: "assets/svg_icons/video_controller/skip_revious.svg",
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: IconButton(
              onPressed: () {
                if (state.playbackState == PlaybackState.completed ||
                    state.playbackState == PlaybackState.initial ||
                    state.playbackState == PlaybackState.paused) {
                  context.read<VideoPlayerCubit>().onPlay();
                } else if (state.playbackState == PlaybackState.playing) {
                  context.read<VideoPlayerCubit>().onPause();
                }
              },
              icon: CustomSvgImage(
                imagePath: state.playbackState == PlaybackState.completed
                    ? "assets/svg_icons/video_controller/replay.svg"
                    : state.playbackState == PlaybackState.playing
                        ? "assets/svg_icons/video_controller/pause.svg"
                        : state.playbackState == PlaybackState.paused
                            ? "assets/svg_icons/video_controller/play.svg"
                            : "assets/svg_icons/video_controller/play.svg",
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: IconButton(
              onPressed: () {},
              icon: const CustomSvgImage(
                imagePath: "assets/svg_icons/video_controller/skip_next.svg",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
