import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
class ImageInput extends StatefulWidget {


  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _storedImage;
  Future<void> _takePicture() async {
    /*    final picker = ImagePicker();
     final imageFile = await picker.getImage(source: ImageSource.camera);*/
    final imageFile = await ImagePicker.platform.pickImage(
        source: ImageSource.camera, maxWidth: 600);
    setState(() {
      //_storedImage=imageFile;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 100,
          decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
          child: _storedImage != null
              ? Image.file(
            _storedImage!,
            fit: BoxFit.cover,
            width: double.infinity,
          )
              :  const Text(
            'No image selected',
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.center,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextButton.icon(
            onPressed: _takePicture,
            icon: const Icon(Icons.camera,color:Color.fromRGBO(49,88,119,0.9),),
            label: const Text(
              'Select Picture',
              style: TextStyle(color: Color.fromRGBO(49,88,119,0.9),),
            ),
          ),
        ),
      ],
    );
  }
}
