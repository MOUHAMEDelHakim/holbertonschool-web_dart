import 'dart:convert';
import '3-util.dart';


Future<String> greetUser() async{
  try {
    var result = await fetchUserData();
    var jsonstr = jsonDecode(result);
    return jsonstr["username"];
  } catch (error) {
    return "error caught: $error";
  }
  
}

Future<String> loginUser() async{
  try {
    if (await checkCredentials()) {
      print("There is a user: true");
      var user = await greetUser();
      return 'Hello $user';
    }
    print("There is a user: false");
    return "Wrong credentials";
  } catch (error) {
    return "error caught: $error";
  }
}