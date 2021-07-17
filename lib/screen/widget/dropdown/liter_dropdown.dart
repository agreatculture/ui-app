// import 'package:distributor_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiterDropDown extends StatefulWidget {
  @override
  _LiterDropDownState createState() => _LiterDropDownState();
}

class _LiterDropDownState extends State<LiterDropDown> {
  // final _meterController = TextEditingController();

  Liter selectedLiter;
  List<Liter> gram = [
    Liter("L"),
  ];

  List<DropdownMenuItem> generateItems(List<Liter> liter) {
    List<DropdownMenuItem> items = [];
    for (var item in gram) {
      items.add(
        DropdownMenuItem(
          child: Text(
            item.namaLiter,
            style: mainTextStyle.copyWith(
                fontSize: 16, fontWeight: FontWeight.bold),
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
      width: 50,
      child: DropdownButtonFormField(
        iconEnabledColor: mainColor,
        iconSize: 30,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
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
        value: selectedLiter,
        items: generateItems(gram),
        onChanged: (item) {
          setState(() {
            selectedLiter = item;
          });
        },
      ),
    );
  }
}

class Liter {
  String namaLiter;

  Liter(this.namaLiter);
}
