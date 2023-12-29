import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharma/widget/Button_with_icon.dart';
import 'package:pharma/widget/round_button.dart';

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x30CB2025), Color(0x30FC555A)]),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Profile Settings",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1D2225)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("Assets/images/men.png"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Christopher Johnson",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1D2225)),
                        ),
                        Text(
                          "@Christopher",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff606060)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "120",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff261204)),
                        ),
                        Text(
                          "Order",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff5B4C41)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "50",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff261204)),
                        ),
                        Text(
                          "Appoinment",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff5B4C41)),
                        ),
                      ],
                    ),
                    InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffB2292E),
                                Color(0xffD12228)
                              ]
                            ),
                              borderRadius: BorderRadius.circular(8)),
                          child:Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 24,right: 24),
          child: Column(
            children: [
              Container(
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                  border: Border.all(color: Color(0xFFEDEDED)),
                ),
                child:Row(
                  children: [
                    SvgPicture.asset("Assets/icon/profile.svg",color: Color(0xff292D32),),
                    SizedBox(width: 10,),
                    Text("My Family",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff261204)),),
                    Spacer(),
                    Container(
                      height: 34,
                      width: 34,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffF8F6F4),
                      ),
                      child: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff292D32),)),
                    )

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFEDEDED)),
                ),
                child:Row(
                  children: [
                    SvgPicture.asset("Assets/icon/profile.svg",color: Color(0xff292D32),),
                    SizedBox(width: 10,),
                    Text("My Family",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff261204)),),
                    Spacer(),
                    Container(
                      height: 34,
                      width: 34,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffF8F6F4),
                      ),
                      child: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff292D32),)),
                    )

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFEDEDED)),
                ),
                child:Row(
                  children: [
                    SvgPicture.asset("Assets/icon/profile.svg",color: Color(0xff292D32),),
                    SizedBox(width: 10,),
                    Text("My Family",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff261204)),),
                    Spacer(),
                    Container(
                      height: 34,
                      width: 34,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffF8F6F4),
                      ),
                      child: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff292D32),)),
                    )

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFEDEDED)),
                ),
                child:Row(
                  children: [
                    SvgPicture.asset("Assets/icon/profile.svg",color: Color(0xff292D32),),
                    SizedBox(width: 10,),
                    Text("My Family",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff261204)),),
                    Spacer(),
                    Container(
                      height: 34,
                      width: 34,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffF8F6F4),
                      ),
                      child: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff292D32),)),
                    )

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFEDEDED)),
                ),
                child:Row(
                  children: [
                    SvgPicture.asset("Assets/icon/profile.svg",color: Color(0xff292D32),),
                    SizedBox(width: 10,),
                    Text("My Family",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff261204)),),
                    Spacer(),
                    Container(
                      height: 34,
                      width: 34,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffF8F6F4),
                      ),
                      child: Center(child: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff292D32),)),
                    )

                  ],
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        )
      ],
    );
  }
}
