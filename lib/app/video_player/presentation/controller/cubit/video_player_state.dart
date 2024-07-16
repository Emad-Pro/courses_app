part of 'video_player_cubit.dart';

class VideoPlayerState extends Equatable {
  final VideoPlayerController? videoPlayerController;
  final PlaybackState playbackState;
  final RequestState requestState;

  const VideoPlayerState({
    this.videoPlayerController,
    this.playbackState = PlaybackState.initial,
    this.requestState = RequestState.loading,
  });
  VideoPlayerState copyWith({
    VideoPlayerController? videoPlayerController,
    PlaybackState? playbackState,
    RequestState? requestState,
  }) {
    return VideoPlayerState(
      requestState: requestState ?? this.requestState,
      videoPlayerController:
          videoPlayerController ?? this.videoPlayerController,
      playbackState: playbackState ?? this.playbackState,
    );
  }

  @override
  List<Object?> get props => [
        videoPlayerController,
        playbackState,
        requestState,
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
