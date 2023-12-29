import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharma/main_screen/home_screen2.dart';

import '../appoinment/appoinment_tab.dart';
import '../profile_tab/profile_setting.dart';
import '../trx/trx_tab.dart';
import 'home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePageScreen(),
    TrxTabScreen(),
    AppoinmentPageScreen(),
    ProfileSettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: _pages[_currentIndex],
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
          floatingActionButton: InkWell(
            onTap: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreenTwo())));
              });
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffB2292E),
              ),

              child: SvgPicture.asset("Assets/icon/upload.svg",color: Colors.white,),
            ),
          ),
          bottomNavigationBar: Container(
            color: Color(0xffFFFFFF),
            height: 70,
            child: BottomAppBar(
                shape: const CircularNotchedRectangle(),
                color:Color(0xffFFFFFF) ,
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _currentIndex = 0;
                            });
                          },
                          child: Column(
                            children: [
                              SvgPicture.asset("Assets/icon/home.svg",color: _currentIndex == 0
                                  ? Color(0xffB2292E)
                                  : Color(0xff292D32),) ,
                              Text("Home",style: TextStyle(color: _currentIndex == 0
                                  ? Color(0xffB2292E)
                                  : Color(0xff292D32),),)
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _currentIndex = 1;
                            });
                          },
                          child: Column(
                            children: [
                              SvgPicture.asset("Assets/icon/trx.svg",color: _currentIndex == 1
                                  ? Color(0xffB2292E)
                                  : Color(0xff292D32),) ,
                              Text("RX Refill",style: TextStyle(color: _currentIndex == 1
                                  ? Color(0xffB2292E)
                                  : Color(0xff292D32),),)
                            ],
                          ),
                        ),
                        SizedBox(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _currentIndex = 2;
                            });
                          },
                          child: Column(
                            children: [
                              SvgPicture.asset("Assets/icon/appoinment.svg",color: _currentIndex == 2
                                  ? Color(0xffB2292E)
                                  : Color(0xff292D32),) ,
                              Text("Appointment",style: TextStyle(color: _currentIndex == 2
                                  ? Color(0xffB2292E)
                                  : Color(0xff292D32),),)
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _currentIndex = 3;
                            });
                          },
                          child: Column(
                            children: [
                              Icon(Icons.account_circle_outlined,color: _currentIndex == 3
                                  ? Color(0xffB2292E)
                                  : Color(0xff292D32),) ,
                              Text("Profile",style: TextStyle(color: _currentIndex == 3
                                  ?Color(0xffB2292E)
                                  : Color(0xff292D32),),)
                            ],
                          ),
                        ),
                      ],
                    ))),
          )),
    );
  }
}
