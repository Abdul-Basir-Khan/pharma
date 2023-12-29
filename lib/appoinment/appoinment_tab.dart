import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma/appoinment/set_date.dart';
import 'package:pharma/widget/reusable_button.dart';
import 'package:pharma/widget/reusable_textfield.dart';

class AppoinmentPageScreen extends StatefulWidget {
  const AppoinmentPageScreen({Key? key}) : super(key: key);

  @override
  State<AppoinmentPageScreen> createState() => _AppoinmentPageScreenState();
}

class _AppoinmentPageScreenState extends State<AppoinmentPageScreen> {
  bool value = false;
  bool value1 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image(image: AssetImage("Assets/images/men.png")),
              Spacer(),
              Text("Appointment",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 18),),
              Spacer(),
              SvgPicture.asset("Assets/icon/bell.svg"),
              SizedBox(width: 10,),
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffEDEDED)),
                  ),
                  child: SvgPicture.asset("Assets/icon/bag.svg")
              )
            ],
          ),
          SizedBox(height: 10,),
          Text("Service",style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff1D2225),fontSize: 14),),
          SizedBox(height: 10,),
          ReusableTextField(hintText: "Service Name",suffixIcon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,size: 30,),),

          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15 ),
              border: Border.all(color: Color(0xffD6D6D6))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Service 1",style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xff1D2225),fontSize: 14),),
                ),
                Divider(thickness: 1,color: Color(0xffEDEDED),),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Service 2",style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xff1D2225),fontSize: 14),),
                ),
                Divider(thickness: 1,color: Color(0xffEDEDED),),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Service 3",style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xff1D2225),fontSize: 14),),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Text("Visit Type",style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff1D2225),fontSize: 14),),
          Row(
            children: [
              Checkbox(
                activeColor: Color(0xffB2292E),
                value: this.value,
                onChanged: (v) {
                  setState(() {
                    this.value = v!;
                  });
                },
              ),
              Text("Virtual Visit",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff262626)),)
            ],
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Color(0xffB2292E),
                value: this.value1,
                onChanged: (b) {
                  setState(() {
                    this.value1 = b!;
                  });
                },
              ),
              Text("Physical Visit",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff262626)),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("Message",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff1D2225)),),
              Spacer(),
              Text("Optional",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff878787)),)
            ],
          ),
          SizedBox(height: 10,),
          ReusableTextField(),
          SizedBox(height: 80,),
          ReusableButton(onTap: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => SetDateAndTimeScreen())));
            });
          }, title:  "Continue",),
        ],
      ),
    );
  }
}
