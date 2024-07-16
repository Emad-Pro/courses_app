import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:video_player/video_player.dart';

import '../../../../../core/enum/state_value.dart';

part 'video_player_state.dart';

class VideoPlayerCubit extends Cubit<VideoPlayerState> {
  final VideoPlayerController _controller;

  VideoPlayerCubit(String videoUrl)
      : _controller = VideoPlayerController.networkUrl(Uri.parse(videoUrl)),
        super(VideoPlayerState()) {
    _controller.addListener(_listenToChanges);

    _controller.initialize().then((_) {
      emit(state.copyWith(
        requestState: RequestState.success,
        videoPlayerController: _controller,
      ));
    });
  }

  void _listenToChanges() {
    print(_controller.value.duration.inSeconds);
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
      videoPlayerController: _controller,
    ));
  }

  void onPause() {
    _controller.pause();
    emit(state.copyWith(
      videoPlayerController: _controller,
    ));
  }

  void onSeek(Duration position) {
    _controller.position;
    emit(state.copyWith(videoPlayerController: _controller));
  }
}
