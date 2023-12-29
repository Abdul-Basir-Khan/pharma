import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma/main_screen/veiw_detail.dart';

import '../color.dart';
import '../widget/Button_with_icon.dart';
import '../widget/round_button.dart';
import 'edit_detail.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({Key? key}) : super(key: key);

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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

                children: [

                  const SizedBox(height: 10,),
                  ButtonWithIcon(onTap: () {  }, icon:
                  const Icon(Icons.add,color: Colors.white,),
                    title: 'Add Family Member',),
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color:const Color(0xffFFE6E6)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text("Christopher’s Family",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:14 ,color: Color(0xff000000)),),
                              Spacer(),
                              Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xff000000))
                            ],
                          ),
                        ),
                        const Divider(color: Color(0xffFFE6E6),thickness: 2,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(backgroundImage: AssetImage("Assets/images/men.png"),),

                              const Text("Christopher’s (you)",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:14 ,color: Color(0xff000000)),),

                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color:  greenColor,
                                ),
                                child: const Text("head",style: TextStyle(color: Colors.white,fontSize:10 ,fontWeight: FontWeight.w500),),
                              ),

                              TextButton(onPressed: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const EditDetailScreen())));
                                });
                              }, child:const Text("Edit",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:10 ,color: Colors.black),) ),

                              InkWell(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const ViewDetailScreen())));
                                  });
                                },
                                child: Container(
                                  height: 30,
                                  width: 70,
                                  alignment: Alignment.center, decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:darkRedColor,
                                ),
                                  child: const Text("Veiw",style: TextStyle(fontSize: 10,fontWeight:FontWeight.w500 ,color: Colors.white),),
                                ),
                              ),

                            ],
                          ),
                        ),
                        const Divider(color: Color(0xffFFE6E6),thickness: 2,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(backgroundImage: AssetImage("Assets/images/men.png"),),
                              const Text("Coldie",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:14 ,color: Color(0xff000000)),),
                              Container(
                                height: 25,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:  lightGreenColor,
                                ),
                                child: const Text("Spouse",style: TextStyle(color: blackColor,fontSize:13 ,fontWeight: FontWeight.w500),),
                              ),
                              TextButton(onPressed: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const EditDetailScreen())));
                                });
                              }, child:const Text("Edit",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:10 ,color: Colors.black),) ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const ViewDetailScreen())));
                                  });
                                },
                                child: Container(
                                  height: 30,
                                  width: 70,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:darkRedColor,
                                  ),
                                  child: const Text("Veiw",style: TextStyle(fontSize: 10,fontWeight:FontWeight.w500 ,color: Colors.white),),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider(color: Color(0xffFFE6E6),thickness: 2,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(backgroundImage: AssetImage("Assets/images/men.png"),),
                              const Text("Johnson",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:14 ,color: Color(0xff000000)),),
                              Container(
                                height: 25,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:  lightGreenColor,
                                ),
                                child: const Text("Brother",style: TextStyle(color: blackColor,fontSize:10 ,fontWeight: FontWeight.w500),),
                              ),
                              TextButton(onPressed: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const EditDetailScreen())));
                                });
                              }, child:const Text("Edit",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:10 ,color: Colors.black),) ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const ViewDetailScreen())));
                                  });
                                },
                                child: Container(
                                  height: 30,
                                  width: 70,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:darkRedColor,
                                  ),
                                  child: const Text("Veiw",style: TextStyle(fontSize: 10,fontWeight:FontWeight.w500 ,color: Colors.white),),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider(color: Color(0xffFFE6E6),thickness: 2,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(backgroundImage: AssetImage("Assets/images/men.png"),),

                              const Text("Charlotte",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:14 ,color: Color(0xff000000)),),

                              Container(

                                height: 25,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:  lightGreenColor,
                                ),
                                child: const Text("Father",style: TextStyle(color: blackColor,fontSize:10 ,fontWeight: FontWeight.w500),),
                              ),

                              TextButton(onPressed: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const EditDetailScreen())));
                                });
                              }, child:const Text("Edit",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:10 ,color: Colors.black),) ),

                              InkWell(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const ViewDetailScreen())));
                                  });
                                },
                                child: Container(

                                  height: 30,
                                  width: 70,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:darkRedColor,
                                  ),
                                  child: const Text("Veiw",style: TextStyle(fontSize: 10,fontWeight:FontWeight.w500 ,color: Colors.white),),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider(color: Color(0xffFFE6E6),thickness: 2,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(backgroundImage: AssetImage("Assets/images/men.png"),),
                              const Text("Anna",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:14 ,color: Color(0xff000000)),),
                              Container(

                                height: 25,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:  lightGreenColor,
                                ),
                                child: const Text("Mother",style: TextStyle(color: blackColor,fontSize:10 ,fontWeight: FontWeight.w500),),
                              ),
                              TextButton(onPressed: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const EditDetailScreen())));
                                });
                              }, child:const Text("Edit",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:10 ,color: Colors.black),) ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const ViewDetailScreen())));
                                  });
                                },
                                child: Container(
                                  height: 30,
                                  width: 70,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:darkRedColor,
                                  ),
                                  child: const Text("Veiw",style: TextStyle(fontSize: 10,fontWeight:FontWeight.w500 ,color: Colors.white),),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
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
                              color: Color(0xff000000),
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
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
