import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma/color.dart';
import 'package:pharma/main_screen/bottom_nav_bar.dart';
import 'package:pharma/registeration_screen/sign_up.dart';
import 'package:pharma/widget/reusable_button.dart';

import '../widget/reusable_textfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isObsecure = true;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Signin",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: blackColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Enter details to access your account",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xff878787)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Email",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xff123454)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReusableTextField(
                  hintText: "Vhnet@gmail.com",
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xff123454)),
                ),
                const SizedBox(
                  height: 10,
                ),
                ReusableTextField(
                  hintText: 'Password',
                  isPassword: _isObsecure,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObsecure = !_isObsecure;
                      });
                    },
                    icon: _isObsecure
                        ? const ImageIcon(AssetImage("Assets/icon/eye.png"),color: blackColor,)
                        : const Icon(
                      Icons.visibility_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Checkbox(
                        fillColor: MaterialStateProperty.all(borderColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        value: this.value,
                        onChanged: (v) {
                          setState(() {
                            this.value = v!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "I Agree with ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xff101010)),
                          children: [
                            TextSpan(
                              text: "Terms of Service ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xffB2292E)),
                            ),
                            TextSpan(
                              text: " and ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff101010)),
                            ),
                            TextSpan(
                              text: "Privacy\nPolicy",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xffB2292E)),
                            )
                          ]),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ReusableButton(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const NavBar()),
                          ),
                        );
                      });
                    },
                    title: "LogIn"),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                        child: Divider(
                          thickness: 2,
                          color: borderColor,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Or"),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Divider(
                          thickness: 2,
                          color: borderColor,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff1B5DDE),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("Assets/icon/google.svg"),
                        const SizedBox(
                          width: 55,
                        ),
                        const Text(
                          "Continue with google",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xffFFFFFF)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff383A3A),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("Assets/icon/apple.svg"),
                        const SizedBox(
                          width: 55,
                        ),
                        const Text(
                          "Continue with apple",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xffFFFFFF)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const SignUpScreen())));
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                            text: "Not a member? ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff101010)),
                            children: [
                              TextSpan(
                                text: "Sign Up",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffB2292E)),
                              )
                            ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
