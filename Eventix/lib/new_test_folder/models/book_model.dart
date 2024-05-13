class Book {
  final int? customerId;
  final int? eventId;
  final double? totalPrice;
  final int? quantities;

  Book({
    this.customerId,
    this.eventId,
    this.totalPrice,
    this.quantities,
  });

  // Convert Book object to a Map
  Map<String, dynamic> toMap() {
    return {
      'CustomerID': customerId,
      'EventID': eventId,
      'Total_Price': totalPrice,
      'Quantities': quantities,
    };
  }

  // Create Book object from a Map
  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      customerId: map['CustomerID'],
      eventId: map['EventID'],
      totalPrice: map['Total_Price'],
      quantities: map['Quantities'],
    );
  }
}
