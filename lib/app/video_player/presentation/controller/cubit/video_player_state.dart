part of 'video_player_cubit.dart';

class VideoPlayerState extends Equatable {
  final VideoPlayerController? videoPlayerController;
  final PlaybackState playbackState;
  final RequestState requestState;
  final Duration currentPosition;
  final Duration totalPosition;
  final bool isFullscreen;
  final bool isVisibility;
  const VideoPlayerState(
      {this.videoPlayerController,
      this.playbackState = PlaybackState.initial,
      this.requestState = RequestState.loading,
      this.currentPosition = Duration.zero,
      this.totalPosition = Duration.zero,
      this.isFullscreen = false,
      this.isVisibility = true});
  VideoPlayerState copyWith(
      {VideoPlayerController? videoPlayerController,
      PlaybackState? playbackState,
      RequestState? requestState,
      Duration? currentPosition,
      Duration? totalPosition,
      bool? isFullscreen,
      bool? isVisibility}) {
    return VideoPlayerState(
        requestState: requestState ?? this.requestState,
        videoPlayerController:
            videoPlayerController ?? this.videoPlayerController,
        playbackState: playbackState ?? this.playbackState,
        currentPosition: currentPosition ?? this.currentPosition,
        totalPosition: totalPosition ?? this.totalPosition,
        isFullscreen: isFullscreen ?? this.isFullscreen,
        isVisibility: isVisibility ?? this.isVisibility);
  }

  @override
  List<Object?> get props => [
        videoPlayerController,
        playbackState,
        requestState,
        currentPosition,
        totalPosition,
        isFullscreen,
        isVisibility
      ];
}

enum PlaybackState {
  initial,
  loading,
  ready,
  playing,
  paused,
  completed,
  buffering,
  error,
}
