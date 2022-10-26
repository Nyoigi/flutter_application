import 'package:flutter/material.dart';
import 'package:flutter_application_3/meditate_song_of_moon.dart';
import 'package:flutter_application_3/welcome.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter',
        home: PageView(children: const [WelcomeMeditate(), Meditate_Moon()]));
  }
}
