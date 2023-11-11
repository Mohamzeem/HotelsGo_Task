import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotelsgo_task/Core/app/app_info.dart';
import 'package:hotelsgo_task/Core/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MyApp.designSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: MyApp.appName,
              onGenerateRoute: AppRouter.onGenerateRoute,
              initialRoute: AppRouter.homePage,
            ));
      },
    );
  }
}
