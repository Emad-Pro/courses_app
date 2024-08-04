import 'package:courses_app/app/video_player/presentation/controller/cubit/video_player_cubit.dart';
import 'package:courses_app/core/enum/state_value.dart';
import '../../../../core/import/app.dart';
import '../widgets/video_player_view_body.dart';

class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VideoPlayerCubit(
          "https://freetestdata.com/wp-content/uploads/2022/02/Free_Test_Data_15MB_MP4.mp4"),
      child: Scaffold(body: BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
          builder: (context, state) {
        switch (state.requestState) {
          case RequestState.loading:
            return const Center(child: CircularProgressIndicator());
          case RequestState.success:
            return state.videoPlayerController!.value.isInitialized
                ? VideoPlayerViewBody(state: state)
                : Container();
          case RequestState.erorr:
            return const Text("");
        }
      })),
    );
  }
}
