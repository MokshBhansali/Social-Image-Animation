import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:social_icon_animation/hover.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Icon Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HoverBox(iconData: LineIcons.github),
              HoverBox(iconData: LineIcons.youtube),
              HoverBox(iconData: LineIcons.twitter),
              HoverBox(iconData: LineIcons.googleLogo),
              HoverBox(iconData: LineIcons.linkedin),
            ],
          ),
        ),
      ),
    );
  }
}
