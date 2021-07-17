import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';
import 'package:tani_application/screen/widget/dropdown/liter_dropdown.dart';

class RekomendasiPenyiraman extends StatelessWidget {
  RekomendasiPenyiraman({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          "Rekomendasi Penyiraman",
          style: mainTextStyle.copyWith(
              fontSize: 2.1 * SizeConfig.textMultiplier, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Kebutuhan air harian tanaman",
              style: mainTextStyle.copyWith(
                  fontSize: 2 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Ganti satuan menjadi menit untuk penggna pompa",
              style: mainTextStyle.copyWith(
                fontSize: 1.9 * SizeConfig.textMultiplier,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Kebutuhan air seluruh area lahan",
              style: mainTextStyle.copyWith(
                fontSize: 1.9 * SizeConfig.textMultiplier,
              ),
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
                        return 'Mohon Masukan Luas lahan';
                      }
                      return null;
                    },
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                LiterDropDown(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Kebutuhan air untuk setiap bendengan ",
              style: mainTextStyle.copyWith(
                fontSize: 1.9 * SizeConfig.textMultiplier,
              ),
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
                        return 'Mohon Masukan Luas lahan';
                      }
                      return null;
                    },
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                LiterDropDown(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
