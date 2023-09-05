import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:tes_api/controller/allmodel.dart';

class controllermodel extends GetxController {
  Future<List<Mahasiswa?>> api() async {
    Uri url = Uri.parse("http://192.168.100.237:3000/tampil");
    try {
      var parse = await http.get(url);
      List<dynamic> jsondata =
          (jsonDecode(parse.body) as Map<String, dynamic>)['Mahasiswa'];
      print(parse.body);
      if (jsondata == null) {
        return [];
      } else {
        return jsondata.map((e) => Mahasiswa.fromJson(e)).toList();
      }
    } catch (e) {
      return [];
    }
  }

  Future<List<Mahasiswa>> apidetail(String id) async {
    Uri url = Uri.parse("http://192.168.1.14:3000/tampil/$id");

    var parse = await http.get(url);
    List<dynamic> jsondata =
        (jsonDecode(parse.body) as Map<String, dynamic>)['Mahasiswa'];
    print(parse.body);
    return jsondata.map((element) => Mahasiswa.fromJson(element)).toList();
  }
}
