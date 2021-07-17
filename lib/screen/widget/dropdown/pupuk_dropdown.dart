// import 'package:distributor_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class PupukDropDown extends StatefulWidget {
  @override
  _PupukDropDownState createState() => _PupukDropDownState();
}

class _PupukDropDownState extends State<PupukDropDown> {
  // final _meterController = TextEditingController();

  Pupuk selectedPupuk;
  List<Pupuk> pupuk = [
    Pupuk("Kotoran Sapi"),
    Pupuk("Jerami"),
    Pupuk("Arang Sekam"),
  ];

  List<DropdownMenuItem> generateItems(List<Pupuk> pupuk) {
    List<DropdownMenuItem> items = [];
    for (var item in pupuk) {
      items.add(
        DropdownMenuItem(
          child: Text(
            item.jenisPupuk,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: mainTextStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.bold,
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
        isExpanded: false,
        value: selectedPupuk,
        items: generateItems(pupuk),
        onChanged: (item) {
          setState(() {
            selectedPupuk = item;
          });
        },
      ),
    );
  }
}

class Pupuk {
  String jenisPupuk;

  Pupuk(this.jenisPupuk);
}
