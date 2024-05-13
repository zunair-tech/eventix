class Volunteer {
  final int userId;
  final String availability;

  Volunteer({
    required this.userId,
    required this.availability,
  });

  // Convert a Volunteer object into a Map
  Map<String, dynamic> toMap() {
    return {
      'UserID': userId,
      'Availability': availability,
    };
  }

  // Create a Volunteer object from a Map
  factory Volunteer.fromMap(Map<String, dynamic> map) {
    return Volunteer(
      userId: map['UserID'],
      availability: map['Availability'],
    );
  }
}
