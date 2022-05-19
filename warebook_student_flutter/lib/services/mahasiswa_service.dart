import 'package:get/get.dart';
import 'package:warebook_student_flutter/models/mahasiswa_model.dart';

class MahasiswaService extends GetConnect {
  final url = "http://192.168.18.12:8000/api/";

  Future<List<Mahasiswa>> getMahasiswa() async {
    print(Uri.parse(url + 'mahasiswa'.toString()));
    return await get(Uri.parse(url + 'mahasiswa'.toString()).toString())
        .then((value) {
      if (value.isOk && value.body != null) {
        return List<Mahasiswa>.from(
            value.body['data'].map((e) => Mahasiswa.fromJson(e)));
      } else {
        throw "${value.statusCode} ${value.body}";
      }
    });
  }
}
