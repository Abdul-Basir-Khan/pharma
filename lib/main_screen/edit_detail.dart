


import 'package:flutter/material.dart';
import 'package:pharma/widget/reusable_button.dart';
import 'package:pharma/widget/reusable_textfield.dart';

import '../color.dart';
import '../widget/round_button.dart';

class EditDetailScreen extends StatefulWidget {
  const EditDetailScreen({Key? key}) : super(key: key);

  @override
  State<EditDetailScreen> createState() => _EditDetailScreenState();
}

class _EditDetailScreenState extends State<EditDetailScreen> {
  bool value= false;
  bool value1=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
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
                    "Edit Details",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  const SizedBox(),
                ],
              ),
              const SizedBox(height: 10,),
              const Text("Personal Information",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
              const SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Name",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500,color: Color(0xff1D2225)),),
                  const SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [

                      Expanded(
                          child:  ReusableTextField(hintText: "Christopher",)
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                          child:  ReusableTextField(hintText: "Christopher",)
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Text("Gender",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500,color: Color(0xff1D2225)),),
                  const SizedBox(height: 10,),
                  const ReusableTextField(hintText: "Male",suffixIcon: Icon(Icons.keyboard_arrow_down_outlined)),
                  const SizedBox(height: 10,),
                  const Text("Relation",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500,color: Color(0xff1D2225)),),
                  const SizedBox(height: 10,),
                  const ReusableTextField(hintText: "Head",suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),),


                  SizedBox(height: 10,),
                  Text("Date of Birth",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500,color: Color(0xff1D2225)),),
                  SizedBox(height: 10,),

                  const ReusableTextField(hintText: "MM/DD/YY",suffixIcon: ImageIcon(AssetImage("Assets/icon/calendar.png")),),
                  SizedBox(height: 10,),
                  Text("Upload Profile Picture",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500,color: Color(0xff000000)),),
                  SizedBox(height: 10,),
                  Container(padding: EdgeInsets.all(25),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xffFFE6E6)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("Assets/images/imageupload.png")),
                        SizedBox(height: 10,),
                        Text("Upload Image",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff000000)),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Other Information",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
                  SizedBox(height: 10,),
                  Text("Family Doctor Details",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),),
                  SizedBox(height: 10,),
                  Text("Name",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500,color: Color(0xff1D2225)),),
                  SizedBox(height: 10,),
                  ReusableTextField(hintText: "Lorem Ipsum",),
                  SizedBox(height: 10,),
                  Text("Phone Number",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500,color: Color(0xff1D2225)),),
                  SizedBox(height: 10,),
                  ReusableTextField(hintText: "00 000 0000000",),
                  SizedBox(height: 10,),
                  Text("Address",style: TextStyle(fontSize:14 ,fontWeight: FontWeight.w500,color: Color(0xff1D2225)),),
                  SizedBox(height: 10,),
                  ReusableTextField(  hintText: "Lorem Ipsum is simply Dummy Text",),
                  SizedBox(height: 10,),
                  Text("Insurance Policy Details",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
                  SizedBox(height: 10,),
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
                      Text("Yes",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff262626)),)
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
                      Text("No",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff262626)),)
                    ],
                  ),

                  SizedBox(height: 20,),
                  Text("Upload photo of the medical insurance",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xffFFE6E6)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage("Assets/images/imageupload.png")),
                              SizedBox(height: 10,),
                              Text("Upload Front Image",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff000000)),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Expanded(
                        child: Container(padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xffFFE6E6)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage("Assets/images/imageupload.png")),
                              SizedBox(height: 10,),
                              Text("Upload Back Image",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff000000)),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  ReusableButton(onTap: (){}, title:  "Update",),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}