import 'package:flutter/material.dart';
import 'package:rise_real_estate/screens/featured_estates_screen.dart';

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
        primarySwatch: Colors.blue,
      ),
      // home: const DemoScreen(),
      home: const FeaturedEstateScreen(),
      // home: const CommonStaggeredViewScreen(),
    );
  }
}
