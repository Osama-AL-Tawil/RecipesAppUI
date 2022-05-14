import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipes_project/main.dart';
import 'package:recipes_project/screens/main_pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = const Duration(seconds: 2);
    return Timer(_duration, () {
      //Navigate to another screen or anyOther function, like i set duration 4 sec so this function run after 4 sec
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyHomePage(title: '',)));

    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return SvgPicture.asset("assets/spalsh_bg.svg",height: height,width: width,);
  }
}