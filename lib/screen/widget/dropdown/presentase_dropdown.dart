// import 'package:distributor_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class PresentaseDropDown extends StatefulWidget {
  @override
  _PresentaseDropDownState createState() => _PresentaseDropDownState();
}

class _PresentaseDropDownState extends State<PresentaseDropDown> {
  Presentase selectedPresentase;
  List<Presentase> presentase = [
    Presentase("< 20%"),
    Presentase("20% - 40%"),
    Presentase("40% - 60%"),
    Presentase("60% - 80%"),
    Presentase(">80"),
  ];

  List<DropdownMenuItem> generateItems(List<Presentase> presentase) {
    List<DropdownMenuItem> items = [];
    for (var item in presentase) {
      items.add(
        DropdownMenuItem(
          child: Text(
            item.jumlahPresentase,
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
        isExpanded: true,
        value: selectedPresentase,
        items: generateItems(presentase),
        onChanged: (item) {
          setState(() {
            selectedPresentase = item;
          });
        },
      ),
    );
  }
}

class Presentase {
  String jumlahPresentase;

  Presentase(this.jumlahPresentase);
}
