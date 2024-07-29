import 'package:courses_app/app/video_player/presentation/controller/cubit/video_player_cubit.dart';
import 'package:courses_app/core/enum/state_value.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/import/app.dart';

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VideoPlayerCubit(
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
      child: Scaffold(body: BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
          builder: (context, state) {
        // print(state.videoPlayerController!.value.position.abs());
        final cubitPlayer = context.read<VideoPlayerCubit>();
        switch (state.requestState) {
          case RequestState.loading:
            return Center(child: const CircularProgressIndicator());
          case RequestState.success:
            return state.videoPlayerController!.value.isInitialized
                ? Column(
                    children: [
                      AspectRatio(
                        aspectRatio:
                            state.videoPlayerController!.value.aspectRatio,
                        child: Stack(children: [
                          VideoPlayer(state.videoPlayerController!),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const CustomSvgImage(
                                          imagePath:
                                              "assets/svg_icons/video_controller/arrow_down.svg",
                                        ),
                                      ),
                                      const Text(
                                          "User Interface Design Essentials"),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const CustomSvgImage(
                                          imagePath:
                                              "assets/svg_icons/video_controller/play_list.svg",
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const CustomSvgImage(
                                          imagePath:
                                              "assets/svg_icons/video_controller/skip_revious.svg",
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          if (state.playbackState ==
                                              PlaybackState.completed) {
                                            context
                                                .read<VideoPlayerCubit>()
                                                .onPlay();
                                          }
                                          if (state.playbackState ==
                                              PlaybackState.playing) {
                                            context
                                                .read<VideoPlayerCubit>()
                                                .onPause();
                                          }
                                          if (state.playbackState ==
                                              PlaybackState.paused) {
                                            context
                                                .read<VideoPlayerCubit>()
                                                .onPlay();
                                          } else {
                                            context
                                                .read<VideoPlayerCubit>()
                                                .onPlay();
                                          }
                                        },
                                        icon: CustomSvgImage(
                                          imagePath: state.playbackState ==
                                                  PlaybackState.completed
                                              ? "assets/svg_icons/video_controller/replay.svg"
                                              : state.playbackState ==
                                                      PlaybackState.playing
                                                  ? "assets/svg_icons/video_controller/pause.svg"
                                                  : state.playbackState ==
                                                          PlaybackState.paused
                                                      ? "assets/svg_icons/video_controller/play.svg"
                                                      : "assets/svg_icons/video_controller/play.svg",
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const CustomSvgImage(
                                          imagePath:
                                              "assets/svg_icons/video_controller/skip_next.svg",
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Row(
                                          children: [
                                            Text(
                                                "${cubitPlayer.convertTimeToSecondsUsingRegExp(state.videoPlayerController!.value.position.toString())} / ${cubitPlayer.convertTimeToSecondsUsingRegExp(state.videoPlayerController!.value.position.toString())}"),
                                            const Spacer(),
                                            IconButton(
                                              onPressed: () {},
                                              icon: const CustomSvgImage(
                                                imagePath:
                                                    "assets/svg_icons/video_controller/full_screen.svg",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      LinearProgressIndicator(
                                        value: state.videoPlayerController!
                                            .value.duration.inSeconds
                                            .toDouble(),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ]),
                      ),
                    ],
                  )
                : Container();
          case RequestState.erorr:
            return const Text("");
        }
      })),
    );
  }
}

class CustomSvgImage extends StatelessWidget {
  const CustomSvgImage({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
    );
  }
}
