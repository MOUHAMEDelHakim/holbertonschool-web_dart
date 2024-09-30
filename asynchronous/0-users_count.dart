import '0-util.dart';

Future<void> usersCount()  async {
   var numberofUsers = await fetchUsersCount();
  print('$numberofUsers');
}
