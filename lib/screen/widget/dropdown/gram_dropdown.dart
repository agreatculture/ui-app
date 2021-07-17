// import 'package:distributor_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class GramDropDown extends StatefulWidget {
  @override
  _GramDropDownState createState() => _GramDropDownState();
}

class _GramDropDownState extends State<GramDropDown> {
  // final _meterController = TextEditingController();

  Gram selectedGram;
  List<Gram> gram = [
    Gram("kg"),
    Gram("g"),
  ];

  List<DropdownMenuItem> generateItems(List<Gram> gram) {
    List<DropdownMenuItem> items = [];
    for (var item in gram) {
      items.add(
        DropdownMenuItem(
          child: Text(
            item.namaGram,
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
        value: selectedGram,
        items: generateItems(gram),
        onChanged: (item) {
          setState(() {
            selectedGram = item;
          });
        },
      ),
    );
  }
}

class Gram {
  String namaGram;

  Gram(this.namaGram);
}
