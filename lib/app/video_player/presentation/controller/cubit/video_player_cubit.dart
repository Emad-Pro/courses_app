import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:video_player/video_player.dart';

import '../../../../../core/enum/state_value.dart';

part 'video_player_state.dart';

class VideoPlayerCubit extends Cubit<VideoPlayerState> {
  final VideoPlayerController _controller;

  VideoPlayerCubit(String videoUrl)
      : _controller = VideoPlayerController.networkUrl(Uri.parse(videoUrl)),
        super(const VideoPlayerState()) {
    _controller.addListener(_listenToChanges);

    _controller.initialize().then((_) {
      emit(state.copyWith(
        requestState: RequestState.success,
        videoPlayerController: _controller,
      ));
    });
  }

  void _listenToChanges() {
    if (_controller.value.isCompleted) {
      emit(state.copyWith(
          videoPlayerController: _controller,
          playbackState: PlaybackState.completed));
    } else if (_controller.value.isPlaying) {
      emit(
        state.copyWith(
            videoPlayerController: _controller,
            playbackState: PlaybackState.playing),
      );
    }
  }

  @override
  Future<void> close() {
    _controller.dispose();
    return super.close();
  }

  void onPlay() {
    _controller.play();
    emit(state.copyWith(
      playbackState: PlaybackState.playing,
      videoPlayerController: _controller,
    ));
  }

  void onPause() {
    _controller.pause();
    emit(state.copyWith(
      playbackState: PlaybackState.paused,
      videoPlayerController: _controller,
    ));
  }

  void onSeek(Duration position) {
    _controller.position;
    emit(state.copyWith(videoPlayerController: _controller));
  }

  String convertTimeToSecondsUsingRegExp(String timeString) {
    // Split the time string into hours, minutes, seconds, and milliseconds
    final parts = timeString.split(':');
    final secondsPart = parts[2].split('.');

    // Convert seconds and milliseconds to a double
    final seconds =
        double.parse(secondsPart[0]) + double.parse(secondsPart[1]) / 1000;

    // Truncate seconds to an integer
    final truncatedSeconds = seconds.toInt();

    // Format the time back to the desired format
    return '${parts[0]}:${parts[1]}:${truncatedSeconds.toString().padLeft(2, '0')}';
  }
}
