import 'package:flutter/material.dart';
import 'dart:io';
//import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  XFile? _image;
  final ImagePicker picker = ImagePicker();

  Future getImage(ImageSource imageSource) async {
    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    if(pickedFile != null) {
      setState(() {
        _image = XFile(pickedFile.path);
      }); 
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPhotoArea(),
            const SizedBox(height: 80),
            _buildButton()
          ],
        )
      ),
    );
  }

  Widget _buildPhotoArea() {
    return _image != null ? SizedBox(
      width: 300,
      height: 300,
      child: Image.file(File(_image!.path)),
    ) : Container(
      width: 300,
      height: 300,
      color: Colors.purple,
    );
  }

  Widget _buildButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: () {
            getImage(ImageSource.camera);
          },
          heroTag: 'image0',
          child: const Icon(Icons.camera),
        ),
        const SizedBox(width: 30),
        FloatingActionButton(
          onPressed: () {
            getImage(ImageSource.gallery);
          },
          heroTag: 'image1',
          child: const Icon(Icons.photo_album),
        ) 
      ],
    );
  }
}