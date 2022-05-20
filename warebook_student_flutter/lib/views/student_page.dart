import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warebook_student_flutter/controllers/mahasiswa_controller.dart';
import 'package:warebook_student_flutter/widgets/cards/student_card.dart';

class StudentPage extends StatelessWidget {
  // const StudentPage({Key? key}) : super(key: key);

  final mahasiswaController = Get.put(MahasiswaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return ListView.builder(
          itemCount: mahasiswaController.data_mahasiswa.length,
          itemBuilder: (context, index) {
            return StudentCard(
              name: mahasiswaController.data_mahasiswa[index].name,
              address: mahasiswaController.data_mahasiswa[index].address,
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
