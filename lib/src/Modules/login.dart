import 'package:basic_ui_withflutter/core/appcolors.dart';
import 'package:basic_ui_withflutter/core/appimages.dart';
import 'package:basic_ui_withflutter/src/Modules/calculator.dart';
import 'package:basic_ui_withflutter/src/Modules/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LoginScreeen extends StatefulWidget {
  const LoginScreeen({super.key});

  @override
  State<LoginScreeen> createState() => _LoginScreeenState();
}

class _LoginScreeenState extends State<LoginScreeen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.appbarcolor,
    ));

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color.fromARGB(255, 5, 63, 110);
      }
      return Colors.white;
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 138, 196, 243),
          Color.fromARGB(255, 1, 39, 70)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        padding: EdgeInsets.symmetric(horizontal: Get.width / 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 80,
          ),
          Container(
              width: Get.width / 2,
              padding: EdgeInsets.only(top: 25),
              child: Text(
                "Sign In",
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            "User Name",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          LoginTextFiled('Enter Username/UserID', Icons.people),
          SizedBox(
            height: 20,
          ),
          Text(
            "Password",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          LoginTextFiled('Enter Password', Icons.key),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.white),
                  ))),
          Row(
            children: [
              Checkbox(
                checkColor: Colors.blueGrey,
                fillColor: MaterialStateColor.resolveWith(getColor),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Text(
                "Remember Me",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Get.to(() => const Calculator());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 8),
              child: Text(
                "LOGIN",
                style: TextStyle(
                    color: Colors.blueGrey, fontWeight: FontWeight.bold),
              ),
            ),
            style: ElevatedButton.styleFrom(
                elevation: 4,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
          )),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            '- OR -',
            style: TextStyle(color: Colors.white),
          )),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            'Sign In With',
            style: TextStyle(color: Colors.white),
          )),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.fb_logo,
                width: 55,
                height: 55,
              ),
              SizedBox(
                width: 60,
              ),
              Image.asset(AppImages.google_logo, width: 50, height: 50)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account? ",
                style: TextStyle(color: Colors.white),
              ),
              InkWell(
                child: Text("Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                }),
              )
            ],
          )
        ]),
      ),
    ));
  }
}

class LoginTextFiled extends StatelessWidget {
  final String hinttext;
  final IconData icon;

  const LoginTextFiled(this.hinttext, this.icon);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      hintStyle: TextStyle(color: Color.fromARGB(255, 156, 156, 156)),
      prefixIcon: Icon(
        icon,
        color: Colors.white,
      ),
      fillColor: Color.fromARGB(255, 177, 208, 247),
      filled: true,
      hintText: hinttext,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    ));
  }
}
