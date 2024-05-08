import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());
  XFile? profilePict;
  uploadImageToProfile(XFile image) async {
    emit(ProfileInitial());
    profilePict = image;
    emit(UploadImageToProfile());
  }
}
