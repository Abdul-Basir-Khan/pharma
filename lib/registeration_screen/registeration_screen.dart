import 'package:flutter/material.dart';
import 'package:pharma/registeration_screen/sign_in.dart';
import 'package:pharma/registeration_screen/sign_up.dart';

import '../color.dart';

class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({Key? key}) : super(key: key);

  @override
  State<RegisterationScreen> createState() => _RegisterationScreenState();
}

class _RegisterationScreenState extends State<RegisterationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage("Assets/images/registeration.png"),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom:MediaQuery.of(context).size.height * 0.02,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("A pharmacy For all your needs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.white),),
                    const SizedBox(height: 10,),
                    const Text("With few clicks place your order, and pick up at your flexible timings",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color:Colors.white),),
                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: (){
                        setState(() {

                          Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignUpScreen())));
                        });

                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: whiteColor,
                        ),
                        child: const Center(child: Text("Create a New Account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color:Color(0xffB2292E)),),),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignInScreen())));
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),

                          border: Border.all(color:  whiteColor),

                        ),
                        child: const Center(child: Text("Sign In to an Existing Account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color:Color(0xffFFFFFF)),),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
