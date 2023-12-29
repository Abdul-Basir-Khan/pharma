import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma/main_screen/description.dart';

import '../color.dart';
import '../widget/reusable_textfield.dart';
import '../widget/round_button.dart';





class AllergiesScreen extends StatefulWidget {
  const AllergiesScreen({Key? key}) : super(key: key);

  @override
  State<AllergiesScreen> createState() => _AllergiesScreenState();
}

class _AllergiesScreenState extends State<AllergiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
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
                  const Spacer(),
                  const Text(
                    "Edit Details",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  const Spacer(),
                  SvgPicture.asset("Assets/icon/notification.svg"),
                  const SizedBox(
                    width: 10,
                  ),
                  RoundButton(
                    onTap: () {},
                    child: SvgPicture.asset("Assets/icon/bag-2.svg"),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const ReusableTextField(
                hintText: "find your medicine here",
                prefixIcon: ImageIcon(AssetImage("Assets/icon/search-normal.png"),),
                suffixIcon: ImageIcon(AssetImage("Assets/icon/microphone-2.png"),),
              ),
              const SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int index) {
                    return  Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: borderColor),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Image(image: AssetImage("Assets/images/product.png")),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        RichText(text: const TextSpan(
                                            text: "Atom Multivitamin\nTablets",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xff000000)),
                                            children: [
                                              TextSpan(
                                                text: "\n\nLorem Ipsum is simply dummy text of\nthe printingindustry.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 8,color: Color(0xff0878787)),
                                              )
                                            ]
                                        )),
                                        const Spacer(),
                                        const Icon(Icons.favorite,color: Color(0xffB2292E),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "\$ 20",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24,
                                            color: Color(0xffB2292E),
                                          ),
                                        ),
                                        const Spacer(),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              Navigator.push(context, MaterialPageRoute(builder: ((context) => const DescriptionScreen())));
                                            });
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(8)  ,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              color: const Color(0xffB2292E),
                                            ),
                                            child: const Center(
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )


                        ],
                      ),
                    );
                  },),
              ),

            ],
          ),
        ),
      ),
    );
  }
}











