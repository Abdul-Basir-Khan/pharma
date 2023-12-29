import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharma/widget/round_button.dart';

import '../color.dart';

class ViewDetailScreen extends StatefulWidget {
  const ViewDetailScreen({Key? key}) : super(key: key);

  @override
  State<ViewDetailScreen> createState() => _ViewDetailScreenState();
}

class _ViewDetailScreenState extends State<ViewDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
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
                  "View Details",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
                ),
                const SizedBox(),
              ],
            ),
            Expanded(
              child: ListView(
                children: [

                  const SizedBox(height: 10,),
                  Center(
                    child: Container(
                        height: 96,
                        width: 96,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),),
                        child: const Image(fit: BoxFit.cover,
                            image: AssetImage("Assets/images/men1.png"))),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0x50F5F5F5)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Personal Information", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 16),),
                        const SizedBox(height: 10,),
                        RichText(text: const TextSpan(
                            text: "Name",
                            style: TextStyle(fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xff383838)),
                            children: [
                              TextSpan(
                                text: "\nColdie Johnson",
                                style: TextStyle(fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xff1D2225)),
                              )
                            ]
                        )),
                        const SizedBox(height: 10,),
                        RichText(text: const TextSpan(
                            text: "Gender",
                            style: TextStyle(fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xff383838)),
                            children: [
                              TextSpan(
                                text: "\nMale",
                                style: TextStyle(fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xff1D2225)),
                              )
                            ]
                        )),
                        const SizedBox(height: 10,),
                        RichText(text: const TextSpan(
                            text: "Relationship",
                            style: TextStyle(fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xff383838)),
                            children: [
                              TextSpan(
                                text: "\nHead",
                                style: TextStyle(fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xff1D2225)),
                              )
                            ]
                        )),
                        const SizedBox(height: 10,),
                        RichText(text: const TextSpan(
                            text: "Date of Birth",
                            style: TextStyle(fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xff383838)),
                            children: [
                              TextSpan(
                                text: "\n20 Jan, 2004",
                                style: TextStyle(fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xff1D2225)),
                              )
                            ]
                        )),
                        const SizedBox(height: 10,),
                        const Text("Other Information", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 16),),

                        const SizedBox(height: 10,),
                        const Text("Family Doctor Details", style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14),),
                        const SizedBox(height: 10,),
                        RichText(text: const TextSpan(
                            text: "Name",
                            style: TextStyle(fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xff383838)),
                            children: [
                              TextSpan(
                                text: "\nLorem Ipsum",
                                style: TextStyle(fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xff1D2225)),
                              )
                            ]
                        )),
                        const SizedBox(height: 10,),
                        RichText(text: const TextSpan(
                            text: "Phone Number",
                            style: TextStyle(fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xff383838)),
                            children: [
                              TextSpan(
                                text: "\n00 000 0000000",
                                style: TextStyle(fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xff1D2225)),
                              )
                            ]
                        )),
                        const SizedBox(height: 10,),
                        RichText(text: const TextSpan(
                            text: "Address",
                            style: TextStyle(fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xff383838)),
                            children: [
                              TextSpan(
                                text: "\nLorem Ipsum is simply dummy text",
                                style: TextStyle(fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xff1D2225)),
                              )
                            ]
                        )),
                        const SizedBox(height: 10,),

                        const Text("Insurance Policy Detail", style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14),),
                        const SizedBox(height: 10,),
                        RichText(text: const TextSpan(
                            text: "Company Name",
                            style: TextStyle(fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xff383838)),
                            children: [
                              TextSpan(
                                text: "\nLorem Ipsum",
                                style: TextStyle(fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xff1D2225)),
                              )
                            ]
                        )),
                        const SizedBox(height: 10,),
                        RichText(text: const TextSpan(
                            text: "Account Number",
                            style: TextStyle(fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xff383838)),
                            children: [
                              TextSpan(
                                text: "\n** **** **** ****",
                                style: TextStyle(fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xff1D2225)),
                              )
                            ]
                        )),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
