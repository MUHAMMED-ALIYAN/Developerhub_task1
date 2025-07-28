import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:ui_project/screens/homescreen.dart';
import 'package:ui_project/screens/splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      builder: (context, widget) => ResponsiveBreakpoints.builder(
        child: Builder(
          builder: (context) {
            return ResponsiveScaledBox(
              width: ResponsiveValue<double?>(
                context,
                defaultValue: null,
                conditionalValues: [
                  const Condition.equals(name: PHONE, value: 450),
                ],
              ).value,
              child: ClampingScrollWrapper.builder(context, widget!),
            );
          },
        ),
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: PHONE),
          const Breakpoint(start: 451, end: 750, name: MOBILE),
          const Breakpoint(start: 751, end: 1080, name: TABLET),
          const Breakpoint(start: 1081, end: double.infinity, name: DESKTOP),
        ],
      ),
      home: splash_screen(),
    );
  }
}
