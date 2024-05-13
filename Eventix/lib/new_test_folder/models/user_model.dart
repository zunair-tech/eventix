class User {
  final int? id;
  final String username;
  final String password;
  final String name;
  final String email;
  final String phoneNumber;
  final String dateOfBirth;
  final String gender;
  final String skills;
  final String? imagePath; // New field for storing image path

  User({
    this.id,
    required this.username,
    required this.password,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.dateOfBirth,
    required this.gender,
    required this.skills,
    this.imagePath, // Initialize imagePath in constructor
  });

  Map<String, dynamic> toMap() {
    return {
      'UserID': id,
      'Username': username,
      'Password': password,
      'Name': name,
      'Email': email,
      'Phone_Number': phoneNumber,
      'Date_of_Birth': dateOfBirth,
      'Gender': gender,
      'Skills': skills,
      'ImagePath': imagePath, // Add imagePath to map
    };
  }
}

// Image model
class Images {
  final String? imagesPath;

  Images({
    this.imagesPath, // Define the named parameter here
  });

  Map<String, dynamic> toMap() {
    return {
      'ImagePath': imagesPath,
    };
  }
}


