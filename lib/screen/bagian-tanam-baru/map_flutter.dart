import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tani_application/constant.dart';

import 'package:tani_application/screen/bagian-tanam-baru/tanaman_list.dart';

class MapFlutter extends StatelessWidget {
  const MapFlutter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff009682),
        title: Text(
          "Tanam Baru",
          style: mainTextStyle.copyWith(
              fontSize: 2.1 * SizeConfig.textMultiplier, color: Colors.white),
        ),
      ),
      body: SlidingUpPanel(
        body: FlutterMap(
          options: MapOptions(
            center: LatLng(-7.4216103, 109.252221),
            zoom: 13,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a'],
            ),
            MarkerLayerOptions(markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(51.5, -0.09),
                builder: (ctx) => Container(
                  child: FlutterLogo(),
                ),
              )
            ])
          ],
        ),
        panelBuilder: (controller) => ListView(
          children: [
            Container(
              height: 31 * SizeConfig.heightMultiplier,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 18, left: 24, right: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Lokasi Kebun",
                      style: mainTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2.5 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "-6.558050, 106.737928",
                      style: mainTextStyle.copyWith(
                          fontSize: 1.8 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 0.9 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      "RT.03/RW.05, Balungbangjaya, Kec. Bogor Barat, Kota Bogor, Jawa Barat 16116",
                      style: mainTextStyle.copyWith(
                          fontSize: 1.7 * SizeConfig.textMultiplier),
                    ),
                    SizedBox(
                      height: 2.4 * SizeConfig.heightMultiplier,
                    ),
                    Divider(),
                    SizedBox(
                      height: 1.3 * SizeConfig.heightMultiplier,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TanamanList()));
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
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        maxHeight: MediaQuery.of(context).size.height * 0.9,
        minHeight: MediaQuery.of(context).size.height * 0.33,
      ),
    );
  }
}
