import 'package:flutter/material.dart';
import 'package:pharma/color.dart';
import 'package:pharma/registeration_screen/scanning_qr_code.dart';
import 'package:pharma/widget/reusable_button.dart';

class ScanQrCodeScreen extends StatefulWidget {
  const ScanQrCodeScreen({Key? key}) : super(key: key);

  @override
  State<ScanQrCodeScreen> createState() => _ScanQrCodeScreenState();
}

class _ScanQrCodeScreenState extends State<ScanQrCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: borderColor),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Scan QR Code",
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff878787)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image(image: AssetImage("Assets/images/qr.png")),
              SizedBox(
                height: 30,
              ),
              ReusableButton(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ScanningQrCodeScreen())));
                  });
                },
                title: "Scan",
              )
            ],
          ),
        ),
      ),
    );
  }
}
