import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma/appoinment/appoinment_confirm.dart';
import 'package:pharma/widget/reusable_button.dart';
import 'package:pharma/widget/round_button.dart';
import 'package:table_calendar/table_calendar.dart';

class SetDateAndTimeScreen extends StatefulWidget {
  const SetDateAndTimeScreen({Key? key}) : super(key: key);

  @override
  State<SetDateAndTimeScreen> createState() => _SetDateAndTimeScreenState();
}

class _SetDateAndTimeScreenState extends State<SetDateAndTimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image(image: AssetImage("Assets/images/men.png")),
                  Spacer(),
                  Text(
                    "Appointment",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  Spacer(),
                  SvgPicture.asset("Assets/icon/bell.svg"),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffEDEDED)),
                      ),
                      child: SvgPicture.asset("Assets/icon/bag.svg"))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TableCalendar(

                calendarFormat: CalendarFormat.month,
                headerStyle: HeaderStyle(
                  rightChevronPadding: EdgeInsets.zero,
                  titleCentered: false,
                  formatButtonVisible: false,
                ),
                calendarStyle:CalendarStyle(
                    todayDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffEDEDED)),
                      color: Color(0xffB2292E)
                    ),
                  defaultDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffEDEDED))
                  ),
                ) ,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
              SizedBox(height: 10,),
              Text("Morning",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEDEDED)),
                    ),
                    child: Center(child: Text("9:00 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)),
                  ),
                  Container(
                    height: 35,
                    width: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEDEDED)),
                    ),
                    child: Center(child: Text("9:30 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)),
                  ),
                  Container(
                    height: 35,
                    width: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEDEDED)),
                    ),
                    child: Center(child: Text("10:00 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEDEDED)),
                    ),
                    child: Center(child: Text("10:30 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)),
                  ),
                  Container(
                    height: 35,
                    width: 98,
                    decoration: BoxDecoration(
                      color: Color(0xffB2292E),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEDEDED)),
                    ),
                    child: Center(child: Text("11:00 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)),
                  ),
                  Container(
                    height: 35,
                    width: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEDEDED)),
                    ),
                    child: Center(child: Text("11:30 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text("Afternoon",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEDEDED)),
                    ),
                    child: Center(child: Text("9:00 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)),
                  ),
                  Container(
                    height: 35,
                    width: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEDEDED)),
                    ),
                    child: Center(child: Text("9:30 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)),
                  ),
                  Container(
                    height: 35,
                    width: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEDEDED)),
                    ),
                    child: Center(child: Text("10:00 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEDEDED)),
                    ),
                    child: Center(child: Text("10:30 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)),
                  ),
                  Container(
                    height: 35,
                    width: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEDEDED)),
                    ),
                    child: Center(child: Text("11:00 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)),
                  ),
                  Container(
                    height: 35,
                    width: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffEDEDED)),
                    ),
                    child: Center(child: Text("11:30 am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              ReusableButton(onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => AppoinmentConfirmScreen())));
                });
              }, title:"Next" ),
            ],
          ),
        ),
      ),
    );
  }
}
