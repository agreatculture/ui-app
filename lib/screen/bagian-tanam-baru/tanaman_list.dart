import 'package:flutter/material.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tani_application/add/List_of_item.dart';
import 'package:tani_application/constant.dart';
import 'package:tani_application/screen/bagian-tanam-baru/praktik_lahan.dart';

import 'panel_widget.dart';

class TanamanList extends StatefulWidget {
  TanamanList({Key key}) : super(key: key);

  @override
  _TanamanListState createState() => _TanamanListState();
}

class _TanamanListState extends State<TanamanList> {
  bool isClicked = false;

  List<ListItem<String>> list;
  @override
  void initState() {
    super.initState();
    populateData();
  }

  void populateData() {
    list = [];
    for (int i = 0; i < 20; i++) list.add(ListItem<String>(""));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tanam Baru",
          style: mainTextStyle.copyWith(
            fontSize: 2.1 * SizeConfig.textMultiplier,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff009682),
      ),
      body: SlidingUpPanel(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (ctx, index) {
              return InkWell(
                // enableFeedback: true,

                onTap: () {
                  setState(() {
                    list[index].isSelected = !list[index].isSelected;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:
                        (list[index].isSelected) ? Colors.green : Colors.white,
                    gradient: (list[index].isSelected)
                        ? LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                            colors: [mainColor, secondColor])
                        : LinearGradient(
                            colors: [Colors.white, Colors.white],
                          ),
                  ),
                  height: 60,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                    child: Row(
                      children: [
                        Text(
                          "Tomato",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: mainTextStyle.copyWith(
                            fontSize: 2.2 * SizeConfig.textMultiplier,
                            color: list[index].isSelected
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 2 * SizeConfig.widthMultiplier,
                        ),
                        Text(
                          "(Solanum lycopersicum)",
                          style: mainTextStyle.copyWith(
                              fontStyle: FontStyle.italic,
                              fontSize: 2.2 * SizeConfig.textMultiplier,
                              color: list[index].isSelected
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        maxHeight: MediaQuery.of(context).size.height * 0.9,
        minHeight: MediaQuery.of(context).size.height * 0.2,
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, -1),
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 2,
              spreadRadius: 1)
        ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Kembali",
                  style: mainTextStyle.copyWith(
                      color: Colors.red,
                      fontSize: 1.9 * SizeConfig.textMultiplier),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return PraktikLahan();
                      },
                    ),
                  );
                },
                child: Text(
                  "Lanjutkan",
                  style: mainTextStyle.copyWith(
                      color: Colors.green,
                      fontSize: 1.9 * SizeConfig.textMultiplier),
                ),
                style: ButtonStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
