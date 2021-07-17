// import 'package:distributor_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class LokasiDropDown extends StatefulWidget {
  @override
  _LokasiDropDownState createState() => _LokasiDropDownState();
}

class _LokasiDropDownState extends State<LokasiDropDown> {
  Lokasi selectedLokasi;
  List<Lokasi> lokasi = [
    Lokasi("Tanpa Naungan (area terbuka)"),
    Lokasi("Dengan Naungan (gree house)"),
  ];

  List<DropdownMenuItem> generateItems(List<Lokasi> lokasi) {
    List<DropdownMenuItem> items = [];
    for (var item in lokasi) {
      items.add(
        DropdownMenuItem(
          child: Text(
            item.namaLokasi,
            style: mainTextStyle,
          ),
          value: item,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
        // hint: TextFormField(
        //   decoration: InputDecoration(
        //     enabledBorder: UnderlineInputBorder(
        //       borderSide: BorderSide(color: Colors.white),
        //     ),
        //   ),
        //   style: mainTextStyle,
        // ),
        isExpanded: true,
        value: selectedLokasi,
        items: generateItems(lokasi),
        onChanged: (item) {
          setState(() {
            selectedLokasi = item;
          });
        },
      ),
    );
  }
}

class Lokasi {
  String namaLokasi;

  Lokasi(this.namaLokasi);
}
