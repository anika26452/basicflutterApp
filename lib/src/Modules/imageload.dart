

import 'dart:io';

import 'package:basic_ui_withflutter/src/controller/imagepicker_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ImageLoad extends StatefulWidget {
  const ImageLoad({super.key});

  @override
  State<ImageLoad> createState() => _ImageLoadState();
}

class _ImageLoadState extends State<ImageLoad> {
  ImagePickerController imagePickerController =
      Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Loader"),
      ),
      body: Column(children: [
        Row(
          children: [
            Text("Select image *"),
            SizedBox(
              width: 200,
            ),
            InkWell(
              child: Icon(
                Icons.image,
                size: 50,
              ),
              onTap: () {
                imagePickerController.getImage();
              },
            )
          ], 
        ),
        SizedBox(
          height: 10,
        ),
        Obx(() => CircleAvatar(
          radius: 100 ,
          backgroundImage: imagePickerController.imagePath.isNotEmpty
              ? FileImage(File(imagePickerController.imagePath.toString()))
              : null,
        ))
      ]),
    );
  }
}
