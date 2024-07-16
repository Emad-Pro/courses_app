part of 'main_cubit.dart';

class MainState extends Equatable {
  const MainState({this.currentIndexButtomNavigationBar = 1});
  final int currentIndexButtomNavigationBar;

  MainState copyWith({int? currentIndexButtomNavigationBar}) {
    return MainState(
        currentIndexButtomNavigationBar: currentIndexButtomNavigationBar ??
            this.currentIndexButtomNavigationBar);
  }

  @override
  List<Object> get props => [currentIndexButtomNavigationBar];
}
