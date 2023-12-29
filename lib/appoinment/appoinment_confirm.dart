import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharma/widget/reusable_button.dart';

class AppoinmentConfirmScreen extends StatefulWidget {
  const AppoinmentConfirmScreen({Key? key}) : super(key: key);

  @override
  State<AppoinmentConfirmScreen> createState() => _AppoinmentConfirmScreenState();
}

class _AppoinmentConfirmScreenState extends State<AppoinmentConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(),
            Spacer(),
            Center(child: Image(image: AssetImage("Assets/icon/app_confirm.png"))),
            SizedBox(height: 10,),
            Text("Hey Christopher Johnson",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),
            SizedBox(height: 10,),
            Text("Your Appointment is\nConfirmed",textAlign: TextAlign.center,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Color(0xff3D3D3D)),),
          Spacer(),
            ReusableButton(onTap: (){
              setState(() {
                Navigator.pop(context);
              });
            }, title: "Go Back To Home")
          ],
        ),
      ),
    );
  }
}
