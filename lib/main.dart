import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/api/service_locator.dart';
import 'fetra_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // solve bug hidden text in release app
  await ScreenUtil.ensureScreenSize();
  await setupGetIt();
  runApp(const Fetra());
}
