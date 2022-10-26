import 'package:flutter/material.dart';

class Meditate_Moon extends StatefulWidget {
  const Meditate_Moon({Key? key}) : super(key: key);

  @override
  State<Meditate_Moon> createState() => _Meditate_MoonState();
}

class _Meditate_MoonState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Column(),
          ),
        ),
      ),
    );
  }
}
