import 'package:ecommerce/core/server/init_server.dart';
import 'package:ecommerce/core/utils/env_variables.dart';
import 'package:ecommerce/stylish.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariable.instance.init();
  await SupabaseService().initialize();

  await ScreenUtil.ensureScreenSize();
  runApp(const Stylish());
}
