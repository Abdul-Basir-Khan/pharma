import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrxTabScreen extends StatefulWidget {
  const TrxTabScreen({Key? key}) : super(key: key);

  @override
  State<TrxTabScreen> createState() => _TrxTabScreenState();
}

class _TrxTabScreenState extends State<TrxTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image(image: AssetImage("Assets/images/men.png")),
                  Spacer(),
                  Text("RX Refill",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 18),),
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
              Text("Approved",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 16),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffD9D9D9)),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(image: AssetImage("Assets/images/pic.png"),),
                      title: Text("Preciption.png",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black),),
                      subtitle: Text("\$ 560.00",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xffB2292E)),),
                      trailing: Image(image: AssetImage("Assets/images/pers.png"),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 147,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              border: Border.all(color: Color(0xffB2292E))
                            ),
                            child: Center(child: Text("View Order",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xffB2292E)),)),
                          ),
                          Spacer(),
                          Container(
                            height: 32,
                            width: 147,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: LinearGradient(
                                    colors: [Color(0xffB2292E), Color(0xffD12228)])
                            ),
                            child: Center(child: Text("Track Order",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xffFFFFFF)),)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text("Recent",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 16),),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children:List.generate(20, (index) => Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image(image: AssetImage("Assets/images/pic.png"),),
                          title: Text("Preciption.png",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black),),
                          subtitle: Text("\$ 560.00",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xffB2292E)),),
                          trailing: Image(image: AssetImage("Assets/images/pers.png"),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 32,
                                width: 147,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                    border: Border.all(color: Color(0xffB2292E))
                                ),
                                child: Center(child: Text("View Order",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xffB2292E)),)),
                              ),
                              Spacer(),
                              Container(
                                height: 32,
                                width: 147,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    gradient: LinearGradient(
                                        colors: [Color(0xffB2292E), Color(0xffD12228)])
                                ),
                                child: Center(child: Text("Next Refill",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Color(0xffFFFFFF)),)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),)
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
