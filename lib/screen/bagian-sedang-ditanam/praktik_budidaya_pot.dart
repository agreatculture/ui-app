import 'package:flutter/material.dart';

import '../../constant.dart';

class PraktikBudidayaDalamPot extends StatefulWidget {
  PraktikBudidayaDalamPot({Key key}) : super(key: key);

  @override
  _PraktikBudidayaDalamPotState createState() =>
      _PraktikBudidayaDalamPotState();
}

class _PraktikBudidayaDalamPotState extends State<PraktikBudidayaDalamPot> {
  int selectedPot;

  final List<Pot> pot = [
    Pot("assets/pot_tabung.png"),
    Pot("assets/pot_kotak.png"),
  ];

  List<DropdownMenuItem> generateItems(List<Pot> pot) {
    List<DropdownMenuItem> items = [];
    for (var item in pot) {
      items.add(
        DropdownMenuItem(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Image.asset(
              item.jenisPot,
              height: 70,
            ),
          ),
          value: item,
        ),
      );
    }
    return items;
  }

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
                    'Jumlah Pot',
                    style: mainTextStyle.copyWith(
                        fontSize: 1.9 * SizeConfig.textMultiplier),
                  ),
                  Container(
                    child: TextFormField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Mohon Masukan Jumlah Pot';
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
                    "Bentuk Pot",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.9 * SizeConfig.textMultiplier),
                  ),
                  Container(
                    width: 30 * SizeConfig.widthMultiplier,
                    child: DropdownButtonFormField(
                      iconEnabledColor: mainColor,
                      iconSize: 30,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                      isExpanded: false,
                      value: pot[1],
                      items: generateItems(pot),
                      onChanged: (item) {
                        setState(() {
                          selectedPot = item;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Ukuran Pot (Tabung)",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.9 * SizeConfig.textMultiplier),
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        child: TextFormField(
                          readOnly: true,
                          enabled: false,
                          decoration: InputDecoration(
                            focusColor: mainColor,
                            hintStyle: mainTextStyle.copyWith(
                                color: Colors.grey,
                                fontStyle: FontStyle.italic),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[300]),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Mohon Masukan Diameter';
                            }
                            return null;
                          },
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(
                        width: 26,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        child: TextFormField(
                          readOnly: true,
                          enabled: false,
                          decoration: InputDecoration(
                            focusColor: mainColor,
                            hintStyle: mainTextStyle.copyWith(
                                color: Colors.grey,
                                fontStyle: FontStyle.italic),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[300]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "cm",
                        style: mainTextStyle.copyWith(
                            fontSize: 1.9 * SizeConfig.textMultiplier),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Ukuran Pot (Kotak)",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.9 * SizeConfig.textMultiplier),
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 5.4,
                        child: TextFormField(
                          readOnly: true,
                          enabled: false,
                          decoration: InputDecoration(
                            focusColor: mainColor,
                            hintStyle: mainTextStyle.copyWith(
                                color: Colors.grey,
                                fontStyle: FontStyle.italic),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[300]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 26,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 5.4,
                        child: TextFormField(
                          readOnly: true,
                          enabled: false,
                          decoration: InputDecoration(
                            focusColor: mainColor,
                            hintStyle: mainTextStyle.copyWith(
                                color: Colors.grey,
                                fontStyle: FontStyle.italic),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[300]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 26,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 5.4,
                        child: TextFormField(
                          readOnly: true,
                          enabled: false,
                          decoration: InputDecoration(
                            focusColor: mainColor,
                            hintStyle: mainTextStyle.copyWith(
                                fontStyle: FontStyle.italic,
                                color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[300]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "cm",
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        focusColor: mainColor,
                        hintStyle: mainTextStyle.copyWith(
                            fontStyle: FontStyle.italic, color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
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
                      readOnly: true,
                      enabled: false,
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

                      // controller: _nameController,
                      // decoration: InputDecoration(

                      // ),

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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        focusColor: mainColor,
                        hintStyle: mainTextStyle.copyWith(
                            fontStyle: FontStyle.italic, color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
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
                    "Kondisi Lokasi Penaman",
                    style: mainTextStyle.copyWith(
                        fontSize: 1.9 * SizeConfig.textMultiplier),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        focusColor: mainColor,
                        hintStyle: mainTextStyle.copyWith(
                            fontStyle: FontStyle.italic, color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 5 * SizeConfig.heightMultiplier,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Pot {
  String jenisPot;

  Pot(this.jenisPot);
}
