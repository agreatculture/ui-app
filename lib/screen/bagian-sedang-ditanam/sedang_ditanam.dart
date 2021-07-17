import 'package:flutter/material.dart';
import 'package:tani_application/constant.dart';

import 'detail_penanaman.dart';

class SedangDitanam extends StatelessWidget {
  const SedangDitanam({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          "Sedang Ditanam",
          style: mainTextStyle.copyWith(
              fontSize: 2.1 * SizeConfig.textMultiplier, color: Colors.white),
        ),
      ),
      body: ListView.separated(
        itemCount: 8,
        itemBuilder: (ctx, index) => InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => DetailTanam()));
          },
          child: Container(
            height: (SizeConfig.isMobilePortrait)
                ? MediaQuery.of(context).size.height / 10
                : MediaQuery.of(context).size.height / 6,
            margin: (index == 0)
                ? EdgeInsets.only(top: 16)
                : EdgeInsets.only(
                    top: 0,
                  ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/fruit.jpg",
                      height: 9 * SizeConfig.heightMultiplier,
                    ),
                  ),
                  SizedBox(
                    width: 2 * SizeConfig.widthMultiplier,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Tomat",
                              style: mainTextStyle.copyWith(
                                  fontSize: 2 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: (SizeConfig.isMobilePortrait)
                                  ? MediaQuery.of(context).size.width / 8.6
                                  : MediaQuery.of(context).size.width / 1.9,
                            ),
                            Container(
                              width: (SizeConfig.isMobilePortrait)
                                  ? MediaQuery.of(context).size.width / 3.3
                                  : MediaQuery.of(context).size.width / 6.9,
                              height: 2.5 * SizeConfig.heightMultiplier,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: mainColor),
                              child: Center(
                                child: Text(
                                  "Pertanian dalam pot",
                                  style: mainTextStyle.copyWith(
                                      color: Colors.white,
                                      fontSize:
                                          1.2 * SizeConfig.textMultiplier),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.dashboard,
                                size: 4 * SizeConfig.imageSizeMultiplier,
                                color: Colors.grey,
                              ),
                              Text(
                                "15 Pot",
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.3 * SizeConfig.textMultiplier),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.lock_clock,
                                size: 4 * SizeConfig.imageSizeMultiplier,
                                color: Colors.grey,
                              ),
                              Text(
                                "4 Hari",
                                style: mainTextStyle.copyWith(
                                    fontSize: 1.3 * SizeConfig.textMultiplier),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 4 * SizeConfig.imageSizeMultiplier,
                            color: Colors.grey,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "RT.03/RW.05, Balungbangjaya, Kec.Bogor Barat",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: mainTextStyle.copyWith(
                                  fontSize: 1.3 * SizeConfig.textMultiplier),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Icon(
                    Icons.arrow_right,
                    size: 8 * SizeConfig.imageSizeMultiplier,
                    color: mainColor,
                  )
                ],
              ),
            ),
          ),
        ),
        separatorBuilder: (ctx, index) => Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Divider(
            thickness: 1,
          ),
        ),
      ),
    );
  }
}
