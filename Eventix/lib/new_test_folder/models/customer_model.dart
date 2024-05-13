class Customer {
  final int userId;

  Customer({required this.userId});

  // Convert Customer object to a Map
  Map<String, dynamic> toMap() {
    return {
      'UserID': userId,
    };
  }
}
