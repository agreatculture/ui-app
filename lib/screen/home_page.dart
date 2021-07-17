import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';

import 'package:tani_application/screen/bagian-sedang-ditanam/sedang_ditanam.dart';
import 'package:tani_application/screen/bagian-tanam-baru/tanam_baru_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 12 * SizeConfig.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: (SizeConfig.isMobilePortrait)
                    ? MediaQuery.of(context).size.height / 5.3
                    : MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 4),
                          blurRadius: 16,
                          spreadRadius: 1)
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  height: 7 * SizeConfig.heightMultiplier,
                                  width: 14 * SizeConfig.imageSizeMultiplier,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/profile.jpg"),
                                    ),
                                  ))),
                          SizedBox(
                            width: 2.5 * SizeConfig.widthMultiplier,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Halo, Denis",
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.9 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                  height: .9 * SizeConfig.heightMultiplier),
                              Container(
                                width: (SizeConfig.isMobilePortrait)
                                    ? MediaQuery.of(context).size.width / 3.4
                                    : MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "RT.03/RW.05, Balungbangjaya, Kec. Bogor Bar., Kota Bogor, Jawa Barat",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: mainTextStyle.copyWith(
                                      fontSize:
                                          1.1 * SizeConfig.textMultiplier),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: (SizeConfig.isMobilePortrait)
                                ? 3.5 * SizeConfig.widthMultiplier
                                : 35 * SizeConfig.widthMultiplier,
                          ),
                          Column(
                            children: [
                              Text(
                                "Minggu, 21 Februari 2021",
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.3 * SizeConfig.textMultiplier),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/cloudy.png",
                                      height:
                                          6 * SizeConfig.imageSizeMultiplier,
                                    ),
                                    SizedBox(width: 7),
                                    Text(
                                      "26",
                                      style: mainTextStyle.copyWith(
                                        fontSize: 4 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          "o",
                                          style: mainTextStyle.copyWith(
                                            fontSize:
                                                1 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              26,
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          "C",
                                          style: mainTextStyle.copyWith(
                                            fontSize:
                                                1.4 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Divider(
                        color: Colors.grey[400],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                "Akun",
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.6 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 20,
                            color: Colors.grey[300],
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                "Riwayat Tanam",
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.6 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10 * SizeConfig.heightMultiplier,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0, -3),
                        blurRadius: 12,
                        spreadRadius: 2)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4 * SizeConfig.heightMultiplier,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Text(
                      "Tanamanku",
                      style: mainTextStyle.copyWith(
                          fontSize: 2 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => SedangDitanam(),
                              ),
                            );
                          },
                          child: Container(
                            height: (SizeConfig.isMobilePortrait)
                                ? MediaQuery.of(context).size.height / 5
                                : MediaQuery.of(context).size.height / 2.35,
                            width: (SizeConfig.isMobilePortrait)
                                ? MediaQuery.of(context).size.width / 2.5
                                : MediaQuery.of(context).size.width / 2.25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: Offset(0, 3),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ]),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 18),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/icSedangDitanam.png",
                                    height: 24 * SizeConfig.imageSizeMultiplier,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Sedang Ditanam",
                                    style: mainTextStyle.copyWith(
                                        fontSize:
                                            1.7 * SizeConfig.textMultiplier),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: (SizeConfig.isMobilePortrait)
                                ? MediaQuery.of(context).size.height / 5
                                : MediaQuery.of(context).size.height / 2.35,
                            width: (SizeConfig.isMobilePortrait)
                                ? MediaQuery.of(context).size.width / 2.5
                                : MediaQuery.of(context).size.width / 2.25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: Offset(0, 3),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ]),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 18),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/icDaftarTugas.png",
                                    height: 24 * SizeConfig.imageSizeMultiplier,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Daftar Tugas",
                                    style: mainTextStyle.copyWith(
                                        fontSize:
                                            1.7 * SizeConfig.textMultiplier),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6 * SizeConfig.heightMultiplier,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => TanamBaruPage()));
                      },
                      child: Container(
                        height: (SizeConfig.isMobilePortrait)
                            ? MediaQuery.of(context).size.height / 13
                            : MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: mainColor.withOpacity(0.4),
                              blurRadius: 14,
                              spreadRadius: 3,
                              offset: Offset(0, 3),
                            )
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.centerRight,
                            colors: [
                              secondColor,
                              mainColor,
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 22, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tanam Baru",
                                style: mainTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 2 * SizeConfig.textMultiplier),
                              ),
                              Icon(
                                Icons.arrow_right_sharp,
                                size: 8 * SizeConfig.imageSizeMultiplier,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4 * SizeConfig.heightMultiplier,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Informasi Hama dan Penyakit",
                      style: mainTextStyle.copyWith(
                          fontSize: 2 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: (SizeConfig.isMobilePortrait)
                                ? MediaQuery.of(context).size.height / 5
                                : MediaQuery.of(context).size.height / 2.35,
                            width: (SizeConfig.isMobilePortrait)
                                ? MediaQuery.of(context).size.width / 2.5
                                : MediaQuery.of(context).size.width / 2.25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: Offset(0, 3),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ]),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 14),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/icHama.png",
                                    height: 26 * SizeConfig.imageSizeMultiplier,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Hama",
                                    style: mainTextStyle.copyWith(
                                        fontSize:
                                            1.7 * SizeConfig.textMultiplier),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: (SizeConfig.isMobilePortrait)
                                ? MediaQuery.of(context).size.height / 5
                                : MediaQuery.of(context).size.height / 2.35,
                            width: (SizeConfig.isMobilePortrait)
                                ? MediaQuery.of(context).size.width / 2.5
                                : MediaQuery.of(context).size.width / 2.25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: Offset(0, 3),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ]),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 18),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/icPenyakit.png",
                                    height: 24 * SizeConfig.imageSizeMultiplier,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Penyakit",
                                    style: mainTextStyle.copyWith(
                                        fontSize:
                                            1.7 * SizeConfig.textMultiplier),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6 * SizeConfig.heightMultiplier,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Praktik Budidaya yang baik",
                      style: mainTextStyle.copyWith(
                          fontSize: 2 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: (SizeConfig.isMobilePortrait)
                                ? MediaQuery.of(context).size.height / 5
                                : MediaQuery.of(context).size.height / 2.35,
                            width: (SizeConfig.isMobilePortrait)
                                ? MediaQuery.of(context).size.width / 2.5
                                : MediaQuery.of(context).size.width / 2.25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: Offset(0, 3),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ]),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 14),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/icPertanianLahan.png",
                                    height: 24 * SizeConfig.imageSizeMultiplier,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Pertanian Lahan",
                                    style: mainTextStyle.copyWith(
                                        fontSize:
                                            1.7 * SizeConfig.textMultiplier),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: (SizeConfig.isMobilePortrait)
                                ? MediaQuery.of(context).size.height / 5
                                : MediaQuery.of(context).size.height / 2.35,
                            width: (SizeConfig.isMobilePortrait)
                                ? MediaQuery.of(context).size.width / 2.5
                                : MediaQuery.of(context).size.width / 2.25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: Offset(0, 3),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ]),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 18),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/image1.png",
                                    height: 23 * SizeConfig.imageSizeMultiplier,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Pertanian dalam Pot",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: mainTextStyle.copyWith(
                                        fontSize:
                                            1.7 * SizeConfig.textMultiplier),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Petunjuk Teknis",
                          style: mainTextStyle.copyWith(
                              fontSize: 2 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20,
                            width: MediaQuery.of(context).size.width / 3.5,
                            child: Row(
                              children: [
                                Text(
                                  "Lihat Semua",
                                  style: mainTextStyle.copyWith(
                                      color: mainColor,
                                      fontSize:
                                          1.6 * SizeConfig.textMultiplier),
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.arrow_right_alt,
                                  size: 6.5 * SizeConfig.imageSizeMultiplier,
                                  color: mainColor,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Text(
                      "Terbaru",
                      style: mainTextStyle.copyWith(
                          fontSize: 1.7 * SizeConfig.textMultiplier),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: (SizeConfig.isMobilePortrait)
                        ? MediaQuery.of(context).size.height / 3.6
                        : MediaQuery.of(context).size.height / 1.8,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (ctx, index) => InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    offset: Offset(0, 5),
                                    blurRadius: 16,
                                    spreadRadius: 1)
                              ]),
                          margin: (index == 0)
                              ? EdgeInsets.only(
                                  left: 24, right: 20, top: 16, bottom: 20)
                              : EdgeInsets.only(
                                  left: 0, right: 20, top: 16, bottom: 20),
                          width: MediaQuery.of(context).size.width / 1.3,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: mainColor,
                                        borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(15),
                                        )),
                                    height: (SizeConfig.isMobilePortrait)
                                        ? MediaQuery.of(context).size.height /
                                            16.5
                                        : MediaQuery.of(context).size.height /
                                            8,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: (SizeConfig.isMobilePortrait)
                                              ? 56 * SizeConfig.widthMultiplier
                                              : 130 *
                                                  SizeConfig.widthMultiplier,
                                        ),
                                        Text(
                                          "Baca",
                                          style: mainTextStyle.copyWith(
                                              color: Colors.white,
                                              fontSize: 1.7 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Image.asset("assets/icArrow.png",
                                            color: Colors.white,
                                            height: 3.5 *
                                                SizeConfig.imageSizeMultiplier)
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bedengan Penyemaian",
                                      style: mainTextStyle.copyWith(
                                          fontSize:
                                              1.7 * SizeConfig.textMultiplier),
                                    ),
                                    SizedBox(
                                      height: 2 * SizeConfig.heightMultiplier,
                                    ),
                                    Text(
                                      "Bedengan Penyemaian merupakan tempat disemaikannya benih yang direkomendasikan AGRIN dalam praktik budidaya Pertanian Lahan.",
                                      style: mainTextStyle.copyWith(
                                          fontSize:
                                              1.3 * SizeConfig.textMultiplier),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
