import 'package:flutter/material.dart';
import 'package:pharma/color.dart';
import 'package:pharma/registeration_screen/registeration_screen.dart';
import 'package:pharma/widget/round_button.dart';

class ScanningQrCodeScreen extends StatefulWidget {
  const ScanningQrCodeScreen({Key? key}) : super(key: key);

  @override
  State<ScanningQrCodeScreen> createState() => _ScanningQrCodeScreenState();
}

class _ScanningQrCodeScreenState extends State<ScanningQrCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundButton(
                    child: const Icon(
                      Icons.arrow_back,
                      color: blackColor,
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },),
                  const Text(
                    "Scan QR Code",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  const SizedBox(),
                ],
              ),
              const SizedBox(height: 50,),
              const Image(
                image: AssetImage("Assets/images/scanning.png"),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Align QR Code within frame",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  const Text(
                    "to scan.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const RegisterationScreen()),
                      ),
                    );
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: lightGreyColor,
                  ),
                  child: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff878787)),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
