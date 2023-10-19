import 'package:flutter/material.dart';
import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

// final picker = ImagePicker();
// XFile? image; 
// List<XFile?> multiImage = []; 
// List<XFile?> images = []; 

class SelectPage extends StatelessWidget {
  const SelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final cameraButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.all(15),
          backgroundColor: const Color.fromARGB(255, 141, 245, 120)
        ),
        onPressed: () {
          //getImage(ImageSource.camera);   //obx사용해야됨
        },
        child: const Text('카메라 열기', style: TextStyle(color: Colors.black)),
      ),
      );
    // Container(
    //   margin:  EdgeInsets.all(10),
    //   padding: EdgeInsets.all(5),
    //   decoration: BoxDecoration(
    //     color: Colors.lightBlueAccent,
    //     borderRadius: BorderRadius.circular(24),
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.grey.withOpacity(0.5),
    //         spreadRadius: 0.5,
    //         blurRadius: 5
    //       )
    //     ],
    //   ),
    //   child: IconButton(
    //     onPressed: () async {

    //     },
    //     icon: Icon(Icon.),
    //   ),
    // );


      final imageButton= Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.all(15),
          backgroundColor: const Color.fromARGB(255, 141, 245, 120)
        ),
        onPressed: () {

        },
        child: const Text('갤러리 열기', style: TextStyle(color: Colors.black)),
      ),
      );

    

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const Expanded(
            child: Center(child: null),
          ),
          cameraButton,
          const Padding(padding: EdgeInsets.only(bottom: 5)),
          imageButton,
          const Padding(padding: EdgeInsets.only(bottom: 90)),
        ],
      ),
    );
  }
}