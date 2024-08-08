// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'profile_cubit.dart';

class ProfileState extends Equatable {
  final bool darkMode;
  const ProfileState({this.darkMode = false});

  ProfileState copyWith({
    bool? darkMode,
  }) {
    return ProfileState(
      darkMode: darkMode ?? this.darkMode,
    );
  }

  @override
  List<Object> get props => [darkMode];
}
