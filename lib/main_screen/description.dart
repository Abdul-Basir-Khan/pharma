import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../color.dart';
import '../widget/Button_with_icon.dart';
import '../widget/round_button.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({Key? key}) : super(key: key);

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
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
                    "Description",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  RoundButton(
                    child: const Icon(
                      Icons.favorite_border,
                      color: blackColor,
                    ),
                    onTap: () {

                    },),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 20,),
                  Container(
                      height: 240,
                      width: 240,
                      child: const Image(image: AssetImage("Assets/images/product1.png"))),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                      border: Border.all(color: const Color(0xffEDEDED)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children:List.generate(20, (index) =>Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: const Color(0xffEDEDED))
                              ),
                              child: const Image(
                                image: AssetImage("Assets/images/product2.png"),
                              ),
                            ), ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            const Text("Vitamin D Plus Tablets",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
                            const Spacer(),
                            const Icon(Icons.star,color: Color(0xffFF8A00),),
                            const SizedBox(width: 10,),
                            const Text("4",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xffFF8A00)),),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            const Text(
                              "\$ 20",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Color(0xffB2292E),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.all(8)  ,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xffB2292E),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text(
                              "4",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xffB2292E),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
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
                            )
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Text("Lorem Ipsum is simply dummy text of the printing and typesetting\n\nindustry. Lorem Ipsum has been the industry's standard dummy text\n\never since the 1500s, when an unknown printer took a galley of type\n\nand scrambled it to make a type specimen book.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff878787)),),
                        const SizedBox(height: 40,),
                        ButtonWithIcon(onTap: () {  }, title: 'Add to cart', icon: const ImageIcon(AssetImage("Assets/icon/bag-2.png"),color: whiteColor,),),
                      ],
                    ),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
