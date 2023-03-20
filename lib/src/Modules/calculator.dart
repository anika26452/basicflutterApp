import 'package:basic_ui_withflutter/core/utils.dart';
import 'package:basic_ui_withflutter/src/Modules/imageload.dart';
import 'package:basic_ui_withflutter/src/Modules/location_page.dart';
import 'package:basic_ui_withflutter/src/controller/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    print("Rebuild");

    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Calculator",
      )),
      body: Center(
          child: Column(children: [
        Obx(() => Text(controller.calc.value.toString())),
        SizedBox(height: 50),
        GestureDetector(
          onTap: () {
            Utils.showToast("Plus");
            controller.plusmethod();
          },
          child: Container(
            width: Get.width,
            height: 50,
            child: Center(
                child: const Text(
              "Plus +",
              style: TextStyle(color: Colors.white),
            )),
            decoration: BoxDecoration(color: Colors.blueGrey[900]),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        GestureDetector(
          onTap: () {
            Utils.showToast("Minus");
            controller.minusMethod();
          },
          child: Container(
            width: Get.width,
            height: 50,
            child: Center(
                child: const Text(
              "Minus -",
              style: TextStyle(color: Colors.white),
            )),
            decoration: BoxDecoration(color: Colors.blueGrey[900]),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        GestureDetector(
          onTap: () {
            Utils.showToast("Multiplication");
            Get.to(LocationPage());
          },
          child: Container(
            width: Get.width,
            height: 50,
            child: Center(
                child: const Text(
              "Multiplication *",
              style: TextStyle(color: Colors.white),
            )),
            decoration: BoxDecoration(color: Colors.blueGrey[900]),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        GestureDetector(
          onTap: () {
            Utils.showToast("Division");
            Get.to(ImageLoad());
          },
          child: Container(
            width: Get.width,
            height: 50,
            child: Center(
                child: const Text(
              "Divisions /",
              style: TextStyle(color: Colors.white),
            )),
            decoration: BoxDecoration(color: Colors.blueGrey[900]),
          ),
        ),
      ])),
    );
  }
}
