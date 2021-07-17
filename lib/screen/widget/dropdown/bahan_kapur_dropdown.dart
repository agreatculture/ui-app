// import 'package:distributor_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class KapurDropDown extends StatefulWidget {
  @override
  _KapurDropDownState createState() => _KapurDropDownState();
}

class _KapurDropDownState extends State<KapurDropDown> {
  // final _meterController = TextEditingController();

  Kapur selectedKapur;
  List<Kapur> kapur = [
    Kapur("Dolomit"),
  ];

  List<DropdownMenuItem> generateItems(List<Kapur> kapur) {
    List<DropdownMenuItem> items = [];
    for (var item in kapur) {
      items.add(
        DropdownMenuItem(
          child: Text(
            item.bahanKapur,
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
        // hint: TextFormField(
        //   decoration: InputDecoration(
        //     enabledBorder: UnderlineInputBorder(
        //       borderSide: BorderSide(color: Colors.white),
        //     ),
        //   ),
        //   style: mainTextStyle,
        // ),
        isExpanded: true,
        value: selectedKapur,
        items: generateItems(kapur),
        onChanged: (item) {
          setState(() {
            selectedKapur = item;
          });
        },
      ),
    );
  }
}

class Kapur {
  String bahanKapur;

  Kapur(this.bahanKapur);
}
