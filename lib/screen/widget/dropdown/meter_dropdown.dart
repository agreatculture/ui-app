// import 'package:distributor_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class MeterDropDown extends StatefulWidget {
  @override
  _MeterDropDownState createState() => _MeterDropDownState();
}

class _MeterDropDownState extends State<MeterDropDown> {
  // final _meterController = TextEditingController();

  Meter selectedMeter;
  List<Meter> meter = [
    Meter("ha"),
    Meter("m"),
  ];

  List<DropdownMenuItem> generateItems(List<Meter> meter) {
    List<DropdownMenuItem> items = [];
    for (var item in meter) {
      items.add(
        DropdownMenuItem(
          child: Text(
            item.namaMeter,
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
        value: selectedMeter,
        items: generateItems(meter),
        onChanged: (item) {
          setState(() {
            selectedMeter = item;
          });
        },
      ),
    );
  }
}

class Meter {
  String namaMeter;

  Meter(this.namaMeter);
}
