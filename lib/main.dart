import 'package:calculator/core/theme/app_theme.dart';
import 'package:calculator/src/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Calculator',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.dark,
          home: Home(),
        );
      },
    );
    // return Sizer(
    //   builder: (context, orientation, screenType) {
    //     return MaterialApp.router(
    //       // routerDelegate: _appRouter.router.routerDelegate,
    //       // routeInformationParser: _appRouter.router.routeInformationParser,
    //       // routeInformationProvider: _appRouter.router.routeInformationProvider,
    //       debugShowCheckedModeBanner: false,
    //       title: 'Calculator',
    //       theme: AppTheme.lightTheme,
    //       darkTheme: AppTheme.darkTheme,
    //       themeMode: ThemeMode.dark,
    //       builder: (context, child) {
    //         return Overlay(
    //           initialEntries: [
    //             OverlayEntry(
    //               builder: (context) {
    //                 return child!;
    //               },
    //             ),
    //           ],
    //         );
    //       },
    //     );
    //   },
    // );
  }
}
