import 'dart:async';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityPlusPage extends StatefulWidget {
  const ConnectivityPlusPage({super.key});

  @override
  State<ConnectivityPlusPage> createState() => _ConnectivityPlusPageState();
}

class _ConnectivityPlusPageState extends State<ConnectivityPlusPage> {
  late StreamSubscription subscription;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      print(result);
    });
  }

  @override
  dispose() {
    super.dispose();

    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Connectivity"),
      ),
      body: Column(
        children: [
          Container(),
          TextButton(
              onPressed: () async {
                var connectivityResult =
                    await (Connectivity().checkConnectivity());
                print(connectivityResult);
                if (connectivityResult == ConnectivityResult.mobile) {
                } else if (connectivityResult == ConnectivityResult.wifi) {}
              },
              child: const Text("Verificar conexão"))
        ],
      ),
    ));
  }
}
