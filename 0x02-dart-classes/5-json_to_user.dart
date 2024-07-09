// user to jason.
class User {
  String name;
  int age;
  double height;
  int id;

  User({
    required this.name,
    required this.age,
    required this.height,
    required this.id,
  });

  Map toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
      'id' : id,
    };
  }
    
    static User fromJson(Map<dynamic, dynamic> userJson){
    
            return User(
            id: userJson ['id'],
            age: userJson ['age'],
            name: userJson ['name'],
            height: userJson['height'],
                    );
    }
    
    @override
  String toString() {
    return "(id : id ,name: name, age: age, height: height)";
  }
 }
