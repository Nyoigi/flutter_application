import 'package:flutter/material.dart';

class WelcomeMeditate extends StatefulWidget {
  const WelcomeMeditate({Key? key}) : super(key: key);

  @override
  State<WelcomeMeditate> createState() => _StateWelcome();
}

class _StateWelcome extends State<WelcomeMeditate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(7),
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 3, 158, 162)),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 120),
            child: Text(
              "Medinow",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 7),
            child: Text(
              "Meditate With Us!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          const Spacer(flex: 1),
          //кнопка
          const Button_Welcome("Sing in with Apple"),
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Button_Welcome("Continue with Email or Phone",
                color: Color.fromARGB(255, 205, 253, 254)),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12, bottom: 40),
            child: Text(
              "Continue with Google",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          ClipRRect(
            child: Image.asset('assets/welcome.png', fit: BoxFit.cover),
          ),
        ]),
      ),
    );
  }
}

// ignore: camel_case_types
class Button_Welcome extends StatelessWidget {
  const Button_Welcome(this.text, {Key? key, this.color = Colors.white})
      : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              )),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(text,
                style: const TextStyle(fontSize: 14, color: Colors.black)),
          ]),
        ),
      ),
    );
  }
}
