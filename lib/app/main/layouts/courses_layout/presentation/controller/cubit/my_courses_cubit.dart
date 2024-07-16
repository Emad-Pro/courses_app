import 'package:bloc/bloc.dart';
import 'package:courses_app/app/main/layouts/courses_layout/domin/entitis/my_courses.dart';
import 'package:equatable/equatable.dart';

part 'my_courses_state.dart';

class MyCoursesCubit extends Cubit<MyCoursesState> {
  MyCoursesCubit() : super(const MyCoursesState());
  final List<MyCourses> testCourses = [
    MyCourses(
        courseImage: "assets/images/fake_image.jpg",
        courceName: "User Interface Design Essentials",
        courceCategory: "Mobile Application",
        totalLessons: 10,
        progressLessons: 9),
    MyCourses(
        courseImage: "assets/images/fake_image.jpg",
        courceName: "User Interface Design Essentials",
        courceCategory: "UI/UX Design",
        totalLessons: 30,
        progressLessons: 27),
    MyCourses(
        courseImage: "assets/images/fake_image.jpg",
        courceName: "User Interface Design Essentials",
        courceCategory: "Video Editor",
        totalLessons: 16,
        progressLessons: 11),
    MyCourses(
        courseImage: "assets/images/fake_image.jpg",
        courceName: "User Interface Design Essentials",
        courceCategory: "Science",
        totalLessons: 50,
        progressLessons: 0),
    MyCourses(
        courseImage: "assets/images/fake_image.jpg",
        courceName: "User Interface Design Essentials",
        courceCategory: "Haking",
        totalLessons: 5,
        progressLessons: 2)
  ];
  double calculatePercentage(double total, double progress) {
    if (progress > total) {
      throw Exception("التقدم لا يمكن أن يكون أكبر من الإجمالي");
    }

    return (progress / total) * 100;
  }

  double calculatePercentageDesmail(double total, double progress) {
    return calculatePercentage(total, progress) / 100;
  }
}
