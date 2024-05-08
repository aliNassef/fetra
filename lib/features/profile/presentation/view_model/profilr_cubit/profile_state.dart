part of 'profile_cubit.dart';

sealed class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

final class ProfileInitial extends ProfileState {}

final class UploadImageToProfile extends ProfileState {
  final XFile image;

  const UploadImageToProfile({required this.image});
}
