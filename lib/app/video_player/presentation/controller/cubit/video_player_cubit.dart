import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

import '../../../../../core/enum/state_value.dart';

part 'video_player_state.dart';

class VideoPlayerCubit extends Cubit<VideoPlayerState> {
  final VideoPlayerController _controller;

  VideoPlayerCubit(String videoUrl)
      : _controller = VideoPlayerController.asset(
            "assets/images/Free_Test_Data_15MB_MP4.mp4",
            videoPlayerOptions: VideoPlayerOptions(
                webOptions: const VideoPlayerWebOptions(
                    controls: VideoPlayerWebOptionsControls.enabled()))),
        super(const VideoPlayerState()) {
    _controller.addListener(_listenToChanges);

    _controller.initialize().then((_) {
      emit(state.copyWith(
        requestState: RequestState.success,
        videoPlayerController: _controller,
        totalPosition: _controller.value.duration,
      ));
    });
  }

  void _listenToChanges() {
    if (_controller.value.isCompleted) {
      emit(state.copyWith(
          videoPlayerController: _controller,
          currentPosition: _controller.value.position + Duration(seconds: 1),
          playbackState: PlaybackState.completed));
    } else if (_controller.value.isPlaying) {
      emit(
        state.copyWith(
            videoPlayerController: _controller,
            playbackState: PlaybackState.playing,
            currentPosition: _controller.value.position,
            totalPosition: _controller.value.duration),
      );
    }
  }

  @override
  Future<void> close() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    _controller.dispose();
    return super.close();
  }

  void toggleFullscreen() {
    emit(state.copyWith(isFullscreen: !state.isFullscreen));
    if (state.isFullscreen) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    } else {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    }
  }

  void toggleVisibiltyIcons() {
    emit(state.copyWith(isVisibility: !state.isVisibility));
  }

  void onPlay() {
    _controller.play().then((onValue) {
      emit(state.copyWith(
        playbackState: PlaybackState.playing,
        videoPlayerController: _controller,
      ));
      Future.delayed(const Duration(seconds: 2)).then((onValue) {
        if (state.playbackState != PlaybackState.paused) {
          emit(state.copyWith(isVisibility: !state.isVisibility));
        }
      });
    });
  }

  void onPause() {
    _controller.pause();
    emit(state.copyWith(
      playbackState: PlaybackState.paused,
      videoPlayerController: _controller,
    ));
  }

  void onSeek(Duration position) {
    _controller.seekTo(position);
    emit(state.copyWith(videoPlayerController: _controller));
  }
}
