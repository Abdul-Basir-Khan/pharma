import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharma/registeration_screen/scan_qr_code.dart';



class SplashServicesScreen extends StatefulWidget {
  @override
  _SplashServicesScreenState createState() => _SplashServicesScreenState();
}
class _SplashServicesScreenState extends State<SplashServicesScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
               ScanQrCodeScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:SizedBox(child: Image(fit: BoxFit.cover, image: AssetImage("Assets/images/splashscreen.png")))
    );
  }
}

