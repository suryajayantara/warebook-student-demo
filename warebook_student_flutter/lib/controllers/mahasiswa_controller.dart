import 'package:get/get.dart';
import 'package:warebook_student_flutter/models/mahasiswa_model.dart';
import 'package:warebook_student_flutter/services/mahasiswa_service.dart';

class MahasiswaController extends GetxController {
  // Variable Section
  final data_mahasiswa = <Mahasiswa>[].obs;

  // Service Call Section
  final _mahasiswaService = MahasiswaService();

  // Lifescyle
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getMahasiswa();
  }

  void getMahasiswa() async {
    return await _mahasiswaService
        .getMahasiswa()
        .then((value) => data_mahasiswa.assignAll(value));
  }
}
