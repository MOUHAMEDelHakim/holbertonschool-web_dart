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
    @override
  String toString() {
    return "(id : id ,name: name, age: age, height: height)";
  }
  }
