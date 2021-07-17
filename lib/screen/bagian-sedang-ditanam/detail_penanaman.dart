import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';
import 'package:tani_application/screen/bagian-sedang-ditanam/praktik_budidaya_pot.dart';
import 'package:tani_application/screen/bagian-sedang-ditanam/rekomendasi_pemupukan_page.dart';
import 'package:tani_application/screen/bagian-sedang-ditanam/rekomendasi_penyiraman.dart';
import 'package:tani_application/screen/bagian-sedang-ditanam/selesai_screen.dart';

import 'Info_tanaman.dart';

class DetailTanam extends StatelessWidget {
  DetailTanam({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          "Detail Penanaman",
          style: mainTextStyle.copyWith(
              fontSize: 2.1 * SizeConfig.textMultiplier, color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 3 * SizeConfig.heightMultiplier,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/fruit.jpg",
                    height: 20 * SizeConfig.imageSizeMultiplier,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Tomat",
                            style: mainTextStyle.copyWith(
                                fontSize: 2 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Container(
                            width: (SizeConfig.isMobilePortrait)
                                ? MediaQuery.of(context).size.width / 3.3
                                : MediaQuery.of(context).size.width / 6.9,
                            height: 2.5 * SizeConfig.heightMultiplier,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: mainColor),
                            child: Center(
                              child: Text(
                                "Pertanian dalam pot",
                                style: mainTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 1.2 * SizeConfig.textMultiplier),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Solanum Lycopersicum",
                      style: mainTextStyle.copyWith(
                          fontSize: 1.7 * SizeConfig.textMultiplier,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lokasi Kebun",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.7 * SizeConfig.textMultiplier),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    readOnly: true,
                    enabled: false,
                    decoration: InputDecoration(
                      focusColor: mainColor,
                      hintStyle: mainTextStyle,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Mohon Masukan Jumlah Pompa';
                      }
                      return null;
                    },
                    onChanged: (value) {},
                  ),
                  // Text(
                  //   "RT.03/RW.05, Balungbangjaya, Kec. Bogor Bar., Kota Bogor, Jawa Barat",
                  //   style: mainTextStyle.copyWith(
                  //       fontSize: 1.8 * SizeConfig.textMultiplier),
                  // ),

                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Umur Tanaman",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.7 * SizeConfig.textMultiplier),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  TextFormField(
                    readOnly: true,
                    enabled: false,
                    decoration: InputDecoration(
                      focusColor: mainColor,
                      hintStyle: mainTextStyle,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Mohon Masukan Jumlah Pompa';
                      }
                      return null;
                    },
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => PraktikBudidayaDalamPot(),
                        ),
                      );
                    },
                    child: Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Praktik Budidaya",
                            style: mainTextStyle.copyWith(
                                fontSize: 2.1 * SizeConfig.textMultiplier),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: mainColor,
                            size: 8 * SizeConfig.imageSizeMultiplier,
                          )
                        ],
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.grey[400],
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => InfoTanaman(),
                        ),
                      );
                    },
                    child: Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Informasi Tanaman",
                            style: mainTextStyle.copyWith(
                                fontSize: 2.1 * SizeConfig.textMultiplier),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: mainColor,
                            size: 8 * SizeConfig.imageSizeMultiplier,
                          )
                        ],
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.grey[400],
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => RekomendasiPemupukan(),
                        ),
                      );
                    },
                    child: Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rekomendasi Pemupukan",
                            style: mainTextStyle.copyWith(
                                fontSize: 2.1 * SizeConfig.textMultiplier),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: mainColor,
                            size: 8 * SizeConfig.imageSizeMultiplier,
                          )
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Divider(
                    color: Colors.grey[400],
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => RekomendasiPenyiraman(),
                        ),
                      );
                    },
                    child: Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rekomendasi Penyiraman",
                            style: mainTextStyle.copyWith(
                                fontSize: 2.1 * SizeConfig.textMultiplier),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: mainColor,
                            size: 8 * SizeConfig.imageSizeMultiplier,
                          )
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Divider(
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: (SizeConfig.isMobilePortrait)
                        ? MediaQuery.of(context).size.height / 14
                        : MediaQuery.of(context).size.height / 8,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => SelesaiSplash(),
                          ),
                        );
                      },
                      child: Text(
                        "Mulai Tanam",
                        style: mainTextStyle.copyWith(
                            color: Colors.white,
                            fontSize: 2.2 * SizeConfig.textMultiplier),
                        /**  IF DISABle
                        color: Colors.black26
                      */
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(mainColor),
                        /** IF DISABLE  
                         * Colors.grey[300]
                         * */
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: (SizeConfig.isMobilePortrait)
                        ? MediaQuery.of(context).size.height / 14
                        : MediaQuery.of(context).size.height / 8,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Batal Tanam",
                        style: mainTextStyle.copyWith(
                            color: Colors.white,
                            fontSize: 2.2 * SizeConfig.textMultiplier),
                        /**  IF DISABle
                        color: Colors.black26
                      */
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        /** IF DISABLE  
                         * Colors.grey[300]
                         * */
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
