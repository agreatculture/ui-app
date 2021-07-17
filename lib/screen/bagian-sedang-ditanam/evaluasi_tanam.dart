import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';
import 'package:tani_application/screen/widget/dropdown/gram_dropdown.dart';
import 'package:tani_application/screen/widget/dropdown/presentase_dropdown.dart';

class EvaluasiTanam extends StatelessWidget {
  const EvaluasiTanam({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          "Evaluasi Tanam",
          style: mainTextStyle.copyWith(
              fontSize: 2.1 * SizeConfig.textMultiplier, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 26,
              ),
              Text(
                "Presentase jumlah tanaman yang tumbuh dan bertahan hingga akhir periode tanam",
                style: mainTextStyle.copyWith(
                    fontSize: 1.7 * SizeConfig.textMultiplier),
              ),
              PresentaseDropDown(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Presentase jumlah tanaman yang terserang hama dan/atau penyakit",
                style: mainTextStyle.copyWith(
                    fontSize: 1.7 * SizeConfig.textMultiplier),
              ),
              PresentaseDropDown(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Hasil Panen",
                style: mainTextStyle.copyWith(
                    fontSize: 1.7 * SizeConfig.textMultiplier),
              ),
              Row(
                children: [
                  Container(
                    width: (SizeConfig.isMobilePortrait)
                        ? MediaQuery.of(context).size.width / 1.5
                        : MediaQuery.of(context).size.width / 1.2,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Mohon Masukan Hasil Panen';
                        }
                        return null;
                      },
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GramDropDown(),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: (SizeConfig.isMobilePortrait)
            ? MediaQuery.of(context).size.height / 10
            : MediaQuery.of(context).size.height / 5,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, -1),
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 2,
              spreadRadius: 1)
        ]),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: InkWell(
            onTap: () {},
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
                    "Simpan",
                    style: mainTextStyle.copyWith(color: Colors.white),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
