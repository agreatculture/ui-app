import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';

import 'evaluasi_tanam.dart';

class SelesaiSplash extends StatefulWidget {
  SelesaiSplash({Key key}) : super(key: key);

  @override
  _SelesaiSplashState createState() => _SelesaiSplashState();
}

class _SelesaiSplashState extends State<SelesaiSplash> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => EvaluasiTanam(),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Image.asset(
          "assets/selesai.png",
          height: 40 * SizeConfig.imageSizeMultiplier,
        ),
      ),
    );
  }
}
