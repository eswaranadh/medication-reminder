import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChooseProfile extends StatefulWidget {
   const ChooseProfile({super.key});

  @override
  State<ChooseProfile> createState() => _ChooseProfileState();
}

class _ChooseProfileState extends State<ChooseProfile> {
    PickedFile? imageFile;
  final ImagePicker picker=ImagePicker();
  
  @override
  Widget build(BuildContext context) {
    return bottomSheetProfile();
  }
void takePhoto(ImageSource source)async{
    final pickedFile=await picker.getImage(source: source);
    setState(() {
      imageFile=pickedFile;
    });
   // ignore: use_build_context_synchronously
   Navigator.pop(context, File(imageFile!.path));

  }

Widget bottomSheetProfile(){
  return Container(
    height: 100,
    width: double.infinity,
    margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    child: Column(
      children:  [
       const Text("Choose Profile Photo",style: TextStyle(fontSize: 20),),
       const SizedBox(height: 20,),
        Row(
      mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
          IconButton(onPressed:() {
            takePhoto(ImageSource.camera);
          }, icon: const Icon(Icons.camera,size: 30,),tooltip: "camera",),
         const Text("Camera"),
         const SizedBox(width: 20,),
          IconButton(onPressed:() {
            takePhoto(ImageSource.gallery);
          }, icon:const Icon(Icons.image, size: 30,), tooltip: "files",),
         const Text("files")

        ],)
        
      ],
    ),
  );

}
}

