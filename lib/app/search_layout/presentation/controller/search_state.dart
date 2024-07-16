part of 'search_cubit.dart';

class SearchState extends Equatable {
  const SearchState({this.searchPageState = SearchPageState.initPage});
  final SearchPageState searchPageState;
  @override
  List<Object> get props => [];
}

enum SearchPageState { initPage, relatedPage }
