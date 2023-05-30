// import 'dart:io';
//
// import 'package:flutter/services.dart';
//
// class ImageServices{
//
//   static Future galleryImage() async {
//     try {
//       final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//       if (image == null) return;
//       return image ;
//     } on PlatformException catch (e) {
//       kPrint('Failed to pick image: $e');
//     }
//   }
//
//   static Future cameraImage() async {
//     try {
//       final image = await ImagePicker().pickImage(source: ImageSource.camera);
//       if (image == null) return;
//       return image;
//     } on PlatformException catch (e) {
//       kPrint('Failed to pick image: $e');
//     }
//   }
//
//   static String getImagePath(File image){
//     return File(image.path).path;
//   }
//
//   static Future getImageFile(XFile image)async{
//     final directory = await getApplicationDocumentsDirectory();
//     final name = basename(image.path);
//     final fileImage = File('${directory.path}/$name');
//
//     return File(image.path).copy(fileImage.path);
//   }
//
// }