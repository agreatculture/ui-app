import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';
import 'package:tani_application/screen/widget/dropdown/gram_dropdown.dart';

class RekomendasiPemupukan extends StatelessWidget {
  const RekomendasiPemupukan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          "Rekomendasi Pemupukan",
          style: mainTextStyle.copyWith(
              color: Colors.white, fontSize: 2.1 * SizeConfig.textMultiplier),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Kebutuhan seluruh area lahan",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.8 * SizeConfig.textMultiplier),
                  ),
                  GramDropDown()
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Table(
                    columnWidths: {
                      1: FractionColumnWidth(.4),
                      2: FractionColumnWidth(.2)
                    },
                    border: TableBorder.symmetric(
                      inside: BorderSide(width: 1, color: Colors.grey),
                    ),
                    children: [
                      TableRow(children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          child: Container(
                              child: Text(
                            'Kotoran Sapi',
                            style: mainTextStyle.copyWith(
                                fontSize: 1.8 * SizeConfig.textMultiplier),
                          )),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          child: Container(
                            width: 50,
                            child: Text('100',
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.8 * SizeConfig.textMultiplier)),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          child: Container(
                              child: Text(
                            'Dolomit',
                            style: mainTextStyle.copyWith(
                                fontSize: 1.8 * SizeConfig.textMultiplier),
                          )),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          child: Container(
                              width: 50,
                              child: Text(
                                '20',
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.8 * SizeConfig.textMultiplier),
                              )),
                        ),
                      ]),
                    ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Kebutuhan setiap bendengan",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.8 * SizeConfig.textMultiplier),
                  ),
                  GramDropDown()
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Table(
                    columnWidths: {
                      1: FractionColumnWidth(.3),
                      2: FractionColumnWidth(.3),
                      3: FractionColumnWidth(.3)
                    },
                    border: TableBorder.symmetric(
                      inside: BorderSide(width: 1, color: Colors.grey),
                    ),
                    children: [
                      TableRow(children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          child: Container(
                              child: Text(
                            'Kotoran Sapi',
                            style: mainTextStyle.copyWith(
                                fontSize: 1.8 * SizeConfig.textMultiplier),
                          )),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          child: Container(
                            width: 50,
                            child: Text('2',
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.8 * SizeConfig.textMultiplier)),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          child: Container(
                            width: 50,
                            child: Text('2',
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.8 * SizeConfig.textMultiplier)),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          child: Container(
                              child: Text(
                            'Dolomit',
                            style: mainTextStyle.copyWith(
                                fontSize: 1.8 * SizeConfig.textMultiplier),
                          )),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          child: Container(
                              width: 50,
                              child: Text(
                                '1.5',
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.8 * SizeConfig.textMultiplier),
                              )),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          child: Container(
                            width: 50,
                            child: Text('-',
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.8 * SizeConfig.textMultiplier)),
                          ),
                        ),
                      ]),
                    ]),
              ),
            ),
            SizedBox(
              height: 26,
            )
          ],
        ),
      ),
    );
  }
}
