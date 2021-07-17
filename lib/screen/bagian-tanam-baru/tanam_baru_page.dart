import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';

import 'map_flutter.dart';

class TanamBaruPage extends StatelessWidget {
  const TanamBaruPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Tanam Baru",
          style: mainTextStyle.copyWith(
            fontSize: 2.1 * SizeConfig.textMultiplier,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff009682),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: (SizeConfig.isMobilePortrait)
                    ? 19.75 * SizeConfig.heightMultiplier
                    : 260,
                margin: EdgeInsets.only(bottom: 24),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Card(
                  elevation: 6,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => MapFlutter()));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Ink.image(
                              height: (SizeConfig.isMobilePortrait)
                                  ? 13.15 * SizeConfig.heightMultiplier
                                  : 210,
                              image: AssetImage("assets/icPertanianLahan2.png"),
                              fit: BoxFit.fitWidth,
                            ),
                          ],
                        ),
                        Container(
                          height: 42,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.center,
                              colors: [
                                mainColor,
                                secondColor,
                              ],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Pertanian Lahan",
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.8 * SizeConfig.textMultiplier,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: (SizeConfig.isMobilePortrait)
                    ? 19.75 * SizeConfig.heightMultiplier
                    : 260,
                margin: EdgeInsets.only(bottom: 24),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Card(
                  elevation: 6,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => MapFlutter()));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Ink.image(
                              height: (SizeConfig.isMobilePortrait)
                                  ? 13.15 * SizeConfig.heightMultiplier
                                  : 210,
                              image: AssetImage("assets/icPertanianPot.png"),
                              fit: BoxFit.fitWidth,
                            ),
                          ],
                        ),
                        Container(
                          height: 42,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.center,
                              colors: [
                                mainColor,
                                secondColor,
                              ],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Pertanian dalam Pot",
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.8 * SizeConfig.textMultiplier,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
