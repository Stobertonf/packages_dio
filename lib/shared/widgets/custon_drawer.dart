import 'dart:io';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:packages_dio/camera/camera_page.dart';
import 'package:packages_dio/qr_code/qr_code_page.dart';
import 'package:packages_dio/battery/battery_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:packages_dio/geolocator/geolocator_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:packages_dio/auto_size_text/auto_size_text_page.dart';
import 'package:packages_dio/connectivity_plus/connectivity_plus_page.dart';
import 'package:packages_dio/percent_indicator/percent_indicator_page.dart';

class CustonDrawer extends StatelessWidget {
  const CustonDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.internetExplorer,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Abrir dio"),
                  ],
                )),
            onTap: () async {},
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.mapLocationDot,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Abrir Google Maps"),
                  ],
                )),
            onTap: () async {},
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.shareNodes,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Comaprtilhar"),
                  ],
                )),
            onTap: () {},
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.percent,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Indicador de porcentagem"),
                  ],
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const PercentIndicatorPage(),
                ),
              );
            },
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.batteryHalf,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Indicador da bateria"),
                  ],
                )),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const BatteryPage()));
            },
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.paperclip,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Auto Size Text"),
                  ],
                )),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AutoSizeTextPage()));
            },
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.home,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Intl"),
                  ],
                )),
            onTap: () {
              var f = NumberFormat('#,###.0#', 'en_US');
              var fBR = NumberFormat('#,###.0#', 'pt_BR');
              print(f.format(12345.345));
              print(fBR.format(123456.345));

              var data = DateTime(2022, 05, 09);
              print(DateFormat('EEEEE', 'en_US').format(data));
              print(DateFormat('EEEEE', 'pt_BR').format(data));

              Intl.defaultLocale = 'pt_BR';
              print(data.toString());
            },
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.flag,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("pt-br"),
                  ],
                )),
            onTap: () {
              if (context.locale.toString() == "pt_BR") {
                context.setLocale(const Locale('en', 'US'));
              } else {
                context.setLocale(const Locale('pt', 'BR'));
              }
              Navigator.pop(context);
            },
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.flag,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Path"),
                  ],
                )),
            onTap: () async {
              var directory = await path_provider.getTemporaryDirectory();
              print(directory.path);
              directory = await path_provider.getApplicationSupportDirectory();
              print(directory.path);
              directory =
                  await path_provider.getApplicationDocumentsDirectory();
              print(directory.path);
            },
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.appStoreIos,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Informações pacote"),
                  ],
                )),
            onTap: () async {},
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.robot,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Informações dispositivo"),
                  ],
                )),
            onTap: () async {},
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.wifi,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Conexão"),
                  ],
                )),
            onTap: () async {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const ConnectivityPlusPage()));
            },
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.mapPin,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("GPS"),
                  ],
                )),
            onTap: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const GeolocatorPage()));
            },
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.qrcode,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("QR Code"),
                  ],
                )),
            onTap: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const QrCodePage()));
            },
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.camera,
                      color: Colors.blue,
                      size: 24,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Camera"),
                  ],
                )),
            onTap: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const CameraPage()));
            },
          ),
        ].reversed.toList(),
      ),
    );
  }
}
