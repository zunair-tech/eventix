class Event {
  final int? eventId;
  final DateTime? dateAndTime;
  final String? culturalEvents;
  final String? workshopsAndSeminars;
  final String? detailedDescription;
  final double? ticketPrices;
  final String? venueInformation;
  final String? musicalConcerts;
  final String? sportingEvents;

  Event({
    this.eventId,
    this.dateAndTime,
    this.culturalEvents,
    this.workshopsAndSeminars,
    this.detailedDescription,
    this.ticketPrices,
    this.venueInformation,
    this.musicalConcerts,
    this.sportingEvents,
  });

  // Convert Event object to a Map
  Map<String, dynamic> toMap() {
    return {
      'EventID': eventId,
      'Date_and_Time': dateAndTime?.toIso8601String(),
      'Cultural_Events': culturalEvents,
      'Workshops_and_Seminars': workshopsAndSeminars,
      'Detailed_Description': detailedDescription,
      'Ticket_Prices': ticketPrices,
      'Venue_Information': venueInformation,
      'Musical_Concerts': musicalConcerts,
      'Sporting_Events': sportingEvents,
    };
  }

  // Create Event object from a Map
  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      eventId: map['EventID'],
      dateAndTime: DateTime.tryParse(map['Date_and_Time']),
      culturalEvents: map['Cultural_Events'],
      workshopsAndSeminars: map['Workshops_and_Seminars'],
      detailedDescription: map['Detailed_Description'],
      ticketPrices: map['Ticket_Prices'],
      venueInformation: map['Venue_Information'],
      musicalConcerts: map['Musical_Concerts'],
      sportingEvents: map['Sporting_Events'],
    );
  }
}
