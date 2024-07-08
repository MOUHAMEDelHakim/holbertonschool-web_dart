class User {
  int? id;
  String? name;
  int? age;
  double? height;

  User({this.id, this.name, this.age, this.height});

  // Static method to create a User instance from JSON
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  // Method to return a string representation of the User instance
  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, height: $height)';
  }
}

void main() {
  // Example JSON data
  Map<dynamic, dynamic> userJson = {
    'id': 1,
    'name': 'Alice',
    'age': 30,
    'height': 5.5,
  };

  // Create a User instance from JSON
  User user = User.fromJson(userJson);

  // Print the string representation of the User instance
  print(user); // Output: User(id: 1, name: Alice, age: 30, height: 5.5)
}
