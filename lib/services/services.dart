
import 'dart:convert';

import 'package:flutter_login/model/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

class ApiServices{
  String userEndPoint = 'https://reqres.in/api/users?page=2';

  //function to call users list endpoint
  Future<List<UserModel>> getUsers() async {
    Response response = await get(Uri.parse(userEndPoint));
    if(response.statusCode ==200){
      final List result = jsonDecode(response.body)['data'];
      return result.map((e) => UserModel.fromJson(e)).toList();
    }else{
      throw Exception(response.reasonPhrase);
    }
  }
}

final userProvider = Provider<ApiServices>((ref) => ApiServices());
