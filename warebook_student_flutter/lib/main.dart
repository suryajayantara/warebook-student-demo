import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warebook_student_flutter/views/student_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: StudentPage(),
      debugShowCheckedModeBanner: false,
    );
  } 
}
