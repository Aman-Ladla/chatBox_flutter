import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class StartScreen extends StatefulWidget {
  static String id = 'startScreen';

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));

    animation = ColorTween(begin: Color(0xff96e2ff), end: Colors.white)
        .animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Hero(
                tag: 'logo',
                child: Container(
                  child: Image.asset('images/logo.png'),
                  height: 100.0,
                ),
              ),
              DefaultTextStyle(
                style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Chat Box'),
                  ],
                  isRepeatingAnimation: false,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 48.0,
          ),
          Button1(
            title: 'Log In',
            color: Colors.lightBlueAccent,
            pressed: () {
              Navigator.pushNamed(context, 'loginScreen');
            },
          ),
          SizedBox(
            height: 40.0,
          ),
          Button1(
            title: 'Register',
            color: Colors.blueAccent,
            pressed: () {
              Navigator.pushNamed(context, 'regisScreen');
            },
          ),
        ],
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  final String title;
  final Color color;
  final Function pressed;

  Button1({this.title, this.color, this.pressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(20.0),
        child: TextButton(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: pressed,
        ),
      ),
    );
  }
}
