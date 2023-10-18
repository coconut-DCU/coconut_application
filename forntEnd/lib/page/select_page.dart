import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


  // XFile? image;
  // final ImagePicker picker = ImagePicker();

  // Future getImage(ImageSource imageSource) async{
  //   final XFile? pickedFile = await picker.pickImage(source: imageSource);
  //   if(pickedFile != null) {
  //     Obx((){
  //       image = XFile(pickedFile.path);
  //       return 
  //     });
  //   }
  // }

class SelectPage extends StatelessWidget {
  const SelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final cameraButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
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


      final imageButton= Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
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
          const Padding(padding: EdgeInsets.only(bottom: 300)),
          imageButton,
          const Padding(padding: EdgeInsets.only(bottom: 80)),
        ],
      ),
    );
  }
}