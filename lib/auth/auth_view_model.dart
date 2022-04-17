import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

class AuthViewModel extends GetxController {
  String? email,
      password,
      regEmail,
      regPassword,
      firstName,
      lastName,
      confirmPassword;

  Future<bool>Login(String email,String password) async {

    try {
      Map<String, String> headers = {
        'Accept': 'application/json',

      };
      final ioc = new HttpClient();
      ioc.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      Map<String, String> body = {'email': email, 'password': password};
      var response = await http.post(Uri.parse('https://shopping-spree.woodsowl.net/api/login'),
          headers: headers, body: body);
      print(body);
      print(response.body);
      if(response.statusCode==201)
        return true;
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }

    return false;
  }

  void CreatAccount() async {
    try {
      throw "test";
    } catch (e) {
      Get.snackbar(
        'Values',
        'Name : $firstName  $lastName \n Email : $regEmail \n Password : $regPassword',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
