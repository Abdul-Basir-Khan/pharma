import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharma/color.dart';
import 'package:pharma/main_screen/allergies.dart';
import 'package:pharma/widget/round_button.dart';

import '../widget/Button_with_icon.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(("Assets/images/men.png")),
                ),
              ),
            ),
            title: const Text(
              "Hello,",
              style: TextStyle(
                  color: Color(0xff261204),
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),
            subtitle: const Text(
              "Christopher",
              style: TextStyle(
                  color: Color(0xff261204),
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
            trailing: FittedBox(
              child: Row(
                children: [
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
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [

                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: const Color(0xffFFE6E6))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Pharmacy Shop Name",
                        style: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Image(image: AssetImage("Assets/images/logo.png")),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: ButtonWithIcon(onTap: () {  }, icon: SvgPicture.asset(
                          "Assets/icon/upload.svg",
                          color: Colors.white,
                        ), title: 'Upload Prescription',),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: blackColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AllergiesScreen()));
                        });
                      },
                      child: Column(
                        children: [
                          const Image(
                              image: AssetImage("Assets/images/allergies.png")),
                          const SizedBox(
                            height: 10,
                          ),
                          const FittedBox(child: Text("Allergies"))
                        ],
                      ),
                    ),
                    InkWell(
                      child: Column(
                        children: [
                          const Image(image: AssetImage("Assets/images/cough.png")),
                          const SizedBox(
                            height: 10,
                          ),
                          const FittedBox(child: Text("Cough &\nCold"))
                        ],
                      ),
                    ),
                    InkWell(
                      child: Column(
                        children: [
                          const Image(image: AssetImage("Assets/images/skin.png")),
                          const SizedBox(
                            height: 10,
                          ),
                          const FittedBox(child: Text("Skincare"))
                        ],
                      ),
                    ),
                    InkWell(
                      child: Column(
                        children: [
                          const Image(
                              image: AssetImage("Assets/images/vitamins.png")),
                          const SizedBox(
                            height: 10,
                          ),
                          const FittedBox(child: Text("Vitamin &\nSupplements"))
                        ],
                      ),
                    ),
                    InkWell(
                      child: Column(
                        children: [
                          const Image(image: AssetImage("Assets/images/hair.png")),
                          const SizedBox(
                            height: 10,
                          ),
                          const FittedBox(child: Text("Haircare"))
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      "Best Sellers",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    const Text(
                      "View all",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Color(0xffB2292E)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                        20,
                            (index) => Container(
                          width: MediaQuery.of(context).size.width * 0.37,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: borderColor)),
                          child: Column(
                            children: [
                              const Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Color(0xffB2292E),
                                  )),
                              const Image(
                                  image: AssetImage("Assets/images/product.png")),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Atom Multivitamin\nTablets",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: blackColor),
                              ),
                              const SizedBox(
                                height: 10,
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
                                  Container(
                                    padding: EdgeInsets.all(5),
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
                              )
                            ],
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
