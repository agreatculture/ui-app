import 'package:flutter/material.dart';

import '../../constant.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  PanelWidget({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: ListView(
        controller: controller,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 3,
                    width: 70,
                  ),
                ),
                SizedBox(
                  height: 3 * SizeConfig.heightMultiplier,
                ),
                Text(
                  "Tanaman",
                  style: mainTextStyle.copyWith(
                      fontSize: 2.4 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 2.6 * SizeConfig.heightMultiplier,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/fruit.jpg',
                      height: 60,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tomat",
                          style: mainTextStyle.copyWith(
                              fontSize: 2.1 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Solanum lycopersicu",
                          style: mainTextStyle.copyWith(
                              fontSize: 1.8 * SizeConfig.textMultiplier,
                              fontStyle: FontStyle.italic),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Dekripsi Tanaman",
                    style: mainTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 2 * SizeConfig.textMultiplier)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "[D-04] Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: mainTextStyle.copyWith(
                      fontSize: 1.9 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 28,
                ),
                Center(
                  // alignment: Alignment.center,
                  child: Text(
                    "Kriteria Lingkungan",
                    style: mainTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 2.1 * SizeConfig.textMultiplier),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Deskripsi Wilayah",
                  style: mainTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 2 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "[D-05] Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: mainTextStyle.copyWith(
                      fontSize: 1.9 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
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
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 16),
                            child: Container(
                                child: Text(
                              'Ketinggian (mdpl)',
                              style: mainTextStyle.copyWith(
                                  fontSize: 1.8 * SizeConfig.textMultiplier),
                            )),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 16),
                            child: Container(
                              width: 50,
                              child: Text('D-06',
                                  style: mainTextStyle.copyWith(
                                      fontSize:
                                          1.8 * SizeConfig.textMultiplier)),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 16),
                            child: Container(
                                child: Text(
                              'Curah Hujan (mm/tahun)',
                              style: mainTextStyle.copyWith(
                                  fontSize: 1.8 * SizeConfig.textMultiplier),
                            )),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 16),
                            child: Container(
                                width: 50,
                                child: Text(
                                  'D-06',
                                  style: mainTextStyle.copyWith(
                                      fontSize:
                                          1.8 * SizeConfig.textMultiplier),
                                )),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 16),
                            child: Container(
                                child: Text(
                              'Suhu Harian(`C)',
                              style: mainTextStyle.copyWith(
                                  fontSize: 1.8 * SizeConfig.textMultiplier),
                            )),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 16),
                            child: Container(
                                width: 50,
                                child: Text(
                                  'D-06',
                                  style: mainTextStyle.copyWith(
                                      fontSize:
                                          1.8 * SizeConfig.textMultiplier),
                                )),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 16),
                            child: Container(
                                child: Text(
                              'Kelembaban',
                              style: mainTextStyle.copyWith(),
                            )),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 16),
                            child: Container(
                                width: 50,
                                child: Text(
                                  'D-06',
                                  style: mainTextStyle.copyWith(
                                      fontSize:
                                          1.8 * SizeConfig.textMultiplier),
                                )),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 16),
                            child: Container(
                                child: Text(
                              'Year',
                              style: mainTextStyle.copyWith(
                                  fontSize: 1.8 * SizeConfig.textMultiplier),
                            )),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 16),
                            child: Container(
                                width: 50,
                                child: Text(
                                  'D-06',
                                  style: mainTextStyle.copyWith(
                                      fontSize:
                                          1.8 * SizeConfig.textMultiplier),
                                )),
                          ),
                        ]),
                      ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "Teknis Budaya",
                    style: mainTextStyle.copyWith(
                        fontSize: 2.1 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Penyemaian",
                  style: mainTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 2 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "[D-26] Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: mainTextStyle.copyWith(
                      fontSize: 1.9 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Persiapan Lahan dan Penanaman",
                  style: mainTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 2 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "[D-27] Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: mainTextStyle.copyWith(
                      fontSize: 1.9 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Pemeliharaan",
                  style: mainTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 2 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "[D-28] Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: mainTextStyle.copyWith(
                      fontSize: 1.9 * SizeConfig.textMultiplier),
                ),
                SizedBox(height: 20),
                Text(
                  "Panen",
                  style: mainTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 2 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "[D-29] Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: mainTextStyle.copyWith(
                      fontSize: 1.9 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Pasca Panen",
                  style: mainTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 2 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "[D-30] Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: mainTextStyle.copyWith(
                      fontSize: 1.9 * SizeConfig.textMultiplier),
                ),
                SizedBox(
                  height: 14 * SizeConfig.heightMultiplier,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
