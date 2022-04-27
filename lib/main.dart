import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wisatajakarta/source/home.dart';
import 'package:page_transition/page_transition.dart';

void main() async{
  runApp(Splashscreen());
}

class Splashscreen extends StatefulWidget {

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage()
    );
  }
}

class SplashPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 10);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(
        context,
        PageTransition(
            type: PageTransitionType.fade,
            duration: Duration(seconds: 2), child: homePage()
        )
    );
  }

initScreen(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/icon.png',
                height: 250,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Text(
              "Pandu Wisata",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 2,
            ),
            SizedBox(height: 100),
            Text(
              "Developed by",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Dimas263",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),
  );
  }
}
