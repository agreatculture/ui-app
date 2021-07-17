import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';

import 'screen/bagian-sedang-ditanam/sedang_ditanam.dart';
import 'screen/bagian-tanam-baru/tanam_baru_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          title: 'Tani Application',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          home: TanamBaruPage(),
        );
      });
    });
  }
}
