import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';
import 'package:tani_application/screen/bagian-tanam-baru/praktik_dalam_pot.dart';
import 'package:tani_application/screen/widget/dropdown/bahan_kapur_dropdown.dart';
import 'package:tani_application/screen/widget/dropdown/meter_dropdown.dart';
import 'package:tani_application/screen/widget/dropdown/pupuk_dropdown.dart';

class PraktikLahan extends StatelessWidget {
  const PraktikLahan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          "Tanam Baru",
          style: mainTextStyle.copyWith(
              color: Colors.white,
              fontSize: 2.1 * SizeConfig.textMultiplier,
              fontWeight: FontWeight.normal),
        ),
      ),
      body: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Praktik Penanaman",
                    style: mainTextStyle.copyWith(
                        fontSize: 2.1 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Luas lahan',
                    style: mainTextStyle.copyWith(
                        fontSize: 1.9 * SizeConfig.textMultiplier),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[300]),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Mohon Masukan Luas lahan';
                            }
                            return null;
                          },
                          onChanged: (value) {},
                        ),
                      ),
                      MeterDropDown(),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Jumlah Bedengan",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.9 * SizeConfig.textMultiplier),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Mohon Masukan Jumlah Bedengan';
                        }
                        return null;
                      },
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Ukuran Bedengan",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.9 * SizeConfig.textMultiplier),
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3.8,
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusColor: mainColor,
                            hintStyle: mainTextStyle,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[300]),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Mohon Masukan Ukuran Bedengan';
                            }
                            return null;
                          },
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(
                        width: 26,
                      ),
                      Text("x"),
                      SizedBox(
                        width: 26,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.8,
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusColor: mainColor,
                            hintStyle: mainTextStyle,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[300]),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Mohon Masukan Ukuran Bedengan';
                            }
                            return null;
                          },
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(
                        width: 5 * SizeConfig.widthMultiplier,
                      ),
                      Text(
                        "m",
                        style: mainTextStyle.copyWith(
                            fontSize: 1.9 * SizeConfig.textMultiplier),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Praktik Pemupukan",
                    style: mainTextStyle.copyWith(
                        fontSize: 2.1 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Bahan pupuk organik",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.9 * SizeConfig.textMultiplier),
                  ),
                  PupukDropDown(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Praktik Pengapuran",
                    style: mainTextStyle.copyWith(
                        fontSize: 2.1 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "pH Tanah",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.9 * SizeConfig.textMultiplier),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusColor: mainColor,
                        hintStyle: mainTextStyle.copyWith(
                          fontStyle: FontStyle.italic,
                          color: Colors.grey[400],
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Mohon Masukan pH Tanah';
                        }
                        return null;
                      },
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Bahan kapur",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.9 * SizeConfig.textMultiplier),
                  ),
                  KapurDropDown(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Praktik Penyiraman",
                    style: mainTextStyle.copyWith(
                        fontSize: 2.1 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Jumlah Pompa",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.9 * SizeConfig.textMultiplier),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Kapasitas Pompa",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.9 * SizeConfig.textMultiplier),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 260,
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusColor: mainColor,
                            hintStyle: mainTextStyle,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[300]),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Mohon Masukan Kapasitas Pompa';
                            }
                            return null;
                          },
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "L/min",
                        style: mainTextStyle.copyWith(
                            fontSize: 1.9 * SizeConfig.textMultiplier),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3 * SizeConfig.heightMultiplier,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 9,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => PraktikDalamPot()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 2,
                      spreadRadius: 1,
                      color: mainColor.withOpacity(0.3),
                    ),
                  ]),
              child: Center(
                child: Text(
                  "Tanam",
                  style: mainTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 1.9 * SizeConfig.textMultiplier),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
