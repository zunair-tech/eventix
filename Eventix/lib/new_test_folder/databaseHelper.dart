import 'dart:io';

import 'package:Eventix/new_test_folder/models/book_model.dart';
import 'package:Eventix/new_test_folder/models/customer_model.dart';
import 'package:Eventix/new_test_folder/models/event_model.dart';
import 'package:Eventix/new_test_folder/models/user_model.dart';
import 'package:Eventix/new_test_folder/models/volunteer_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;

  Future<String> getDatabasePath() async {
    // Get the directory for storing the database file
    Directory directory = await getApplicationDocumentsDirectory();

    // Create the directory if it doesn't exist
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
    }

    // Return the path to the database file
    return directory.path;
  }

// Example usage
  Future<void> main() async {
    String databasePath = await getDatabasePath();
    print('Database path: $databasePath');
  }

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDatabase();
    String path = await getDatabasesPath();
    print('database path is: $path');
    return _database;
  }

  // Future<Database> initDatabase() async {
  //   return openDatabase(
  //     join(await getDatabasesPath(), 'Eventix.db'),
  //     onCreate: (db, version) async {
  //       // Create User table
  //       await db.execute('''
  //         CREATE TABLE User (
  //           UserID INTEGER PRIMARY KEY AUTOINCREMENT,
  //           Username TEXT,
  //           Password TEXT,
  //           Name TEXT,
  //           Email TEXT,
  //           Phone_Number TEXT,
  //           Date_of_Birth DATE,
  //           Gender TEXT,
  //           Skills TEXT,
  //           ImagePath TEXT
  //         )
  //       ''');

  Future<Database> initDatabase() async {
    // Get the directory for the app's documents
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'Eventix.db');

    // Open the database at the documents directory path
    return openDatabase(
      path,
      onCreate: (db, version) async {
        // create images table
        await db.execute('''
  CREATE TABLE IF NOT EXISTS Images (
    ImagePath TEXT PRIMARY KEY
  )
''');

        // Create User table
        await db.execute('''
        CREATE TABLE User (
          UserID INTEGER PRIMARY KEY AUTOINCREMENT,
          Username TEXT,
          Password TEXT,
          Name TEXT,
          Email TEXT,
          Phone_Number TEXT,
          Date_of_Birth DATE,
          Gender TEXT,
          Skills TEXT,
          ImagePath TEXT
        )
      ''');

        // Create Customer table
        await db.execute('''
          CREATE TABLE Customer (
            UserID INT,
            PRIMARY KEY (UserID),
            FOREIGN KEY (UserID) REFERENCES User(UserID)
          )
        ''');

        // Create Event table
        await db.execute('''
          CREATE TABLE Event (
            EventID INTEGER PRIMARY KEY AUTOINCREMENT,
            Date_and_Time DATETIME,
            Cultural_Events TEXT,
            Workshops_and_Seminars TEXT,
            Detailed_Description TEXT,
            Ticket_Prices DECIMAL(10, 2),
            Venue_Information TEXT,
            Musical_Concerts TEXT,
            Sporting_Events TEXT
          )
        ''');

        // Create Book table
        await db.execute('''
          CREATE TABLE Book (
            CustomerID INT,
            EventID INT,
            Total_Price DECIMAL(10, 2),
            Quantities INT,
            PRIMARY KEY (CustomerID, EventID),
            FOREIGN KEY (CustomerID) REFERENCES Customer(UserID),
            FOREIGN KEY (EventID) REFERENCES Event(EventID)
          )
        ''');

        // Create Volunteer table
        await db.execute('''
          CREATE TABLE Volunteer (
            UserID INT,
            Availability TEXT,
            PRIMARY KEY (UserID),
            FOREIGN KEY (UserID) REFERENCES User(UserID)
          )
        ''');

        // Create Organize table
        await db.execute('''
          CREATE TABLE Organize (
            VolunteerID INT,
            EventID INT,
            PRIMARY KEY (VolunteerID, EventID),
            FOREIGN KEY (VolunteerID) REFERENCES Volunteer(UserID),
            FOREIGN KEY (EventID) REFERENCES Event(EventID)
          )
        ''');

        // Create Cultural_Events table
        await db.execute('''
          CREATE TABLE Cultural_Events (
            EventID INT,
            Workshops_and_Seminars TEXT,
            FOREIGN KEY (EventID) REFERENCES Event(EventID)
          )
        ''');

        // Create Musical_Concerts table
        await db.execute('''
          CREATE TABLE Musical_Concerts (
            EventID INT,
            Concert_Details TEXT,
            FOREIGN KEY (EventID) REFERENCES Event(EventID)
          )
        ''');

        // Create Sporting_Events table
        await db.execute('''
          CREATE TABLE Sporting_Events (
            EventID INT,
            Sport_Details TEXT,
            FOREIGN KEY (EventID) REFERENCES Event(EventID)
          )
        ''');
      },
      version: 1,
    );
  }

// insert images

  // DatabaseHelper.dart
  Future<int> insertImages(Images images) async {
    final db = await database;
    return await db!.insert('Images', images.toMap());
  }

// insert user
  Future<int> insertUser(User user) async {
    final db = await database;
    return await db!.insert('User', user.toMap());
  }

  Future<List<User>> getUsers() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db!.query('User');
    return List.generate(maps.length, (i) {
      return User(
        id: maps[i]['UserID'],
        username: maps[i]['Username'],
        password: maps[i]['Password'],
        name: maps[i]['Name'],
        email: maps[i]['Email'],
        phoneNumber: maps[i]['Phone_Number'],
        dateOfBirth: maps[i]['Date_of_Birth'],
        gender: maps[i]['Gender'],
        skills: maps[i]['Skills'],
        // Fetch image path from the database
        imagePath: maps[i][
            'ImagePath'], // Assuming 'ImagePath' is the column name for storing image paths
      );
    });
  }

  Future<int> updateUser(User user) async {
    final db = await database;
    return await db!.update(
      'User',
      user.toMap(),
      where: 'UserID = ?',
      whereArgs: [user.id],
    );
  }

  Future<int> deleteUser(int id) async {
    final db = await database;
    return await db!.delete(
      'User',
      where: 'UserID = ?',
      whereArgs: [id],
    );
  }

  // customer section

  // Insert a customer into the database
  Future<int> insertCustomer(Customer customer) async {
    final db = await database;
    return await db!.insert('Customer', customer.toMap());
  }

  // Get all customers from the database
  Future<List<Customer>> getCustomers() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db!.query('Customer');
    return List.generate(maps.length, (i) {
      return Customer(
        userId: maps[i]['UserID'],
      );
    });
  }

  // Update a customer in the database
  Future<int> updateCustomer(Customer customer) async {
    final db = await database;
    return await db!.update(
      'Customer',
      customer.toMap(),
      where: 'UserID = ?',
      whereArgs: [customer.userId],
    );
  }

  // Delete a customer from the database
  Future<int> deleteCustomer(int userId) async {
    final db = await database;
    return await db!.delete(
      'Customer',
      where: 'UserID = ?',
      whereArgs: [userId],
    );
  }

  // event section
  Future<int> insertEvent(Event event) async {
    final db = await database;
    return await db!.insert('Event', event.toMap());
  }

  Future<List<Event>> getEvents() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db!.query('Event');
    return List.generate(maps.length, (i) {
      return Event.fromMap(maps[i]);
    });
  }

  Future<int> updateEvent(Event event) async {
    final db = await database;
    return await db!.update(
      'Event',
      event.toMap(),
      where: 'EventID = ?',
      whereArgs: [event.eventId],
    );
  }

  Future<int> deleteEvent(int eventId) async {
    final db = await database;
    return await db!.delete(
      'Event',
      where: 'EventID = ?',
      whereArgs: [eventId],
    );
  }

// book section

  Future<int> insertBook(Book book) async {
    final db = await database;
    return await db!.insert('Book', book.toMap());
  }

  Future<List<Book>> getBooks() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db!.query('Book');
    return List.generate(maps.length, (i) {
      return Book.fromMap(maps[i]);
    });
  }

  Future<int> updateBook(Book book) async {
    final db = await database;
    return await db!.update(
      'Book',
      book.toMap(),
      where: 'CustomerID = ? AND EventID = ?',
      whereArgs: [book.customerId, book.eventId],
    );
  }

  Future<int> deleteBook(int customerId, int eventId) async {
    final db = await database;
    return await db!.delete(
      'Book',
      where: 'CustomerID = ? AND EventID = ?',
      whereArgs: [customerId, eventId],
    );
  }

  // volunteer model
  // Insert a volunteer into the database
  Future<int> insertVolunteer(Volunteer volunteer) async {
    final db = await database;
    return await db!.insert('Volunteer', volunteer.toMap());
  }

// Get all volunteers from the database
  Future<List<Volunteer>> getVolunteers() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db!.query('Volunteer');
    return List.generate(maps.length, (i) {
      return Volunteer.fromMap(maps[i]);
    });
  }

// Update a volunteer in the database
  Future<int> updateVolunteer(Volunteer volunteer) async {
    final db = await database;
    return await db!.update(
      'Volunteer',
      volunteer.toMap(),
      where: 'UserID = ?',
      whereArgs: [volunteer.userId],
    );
  }

// Delete a volunteer from the database
  Future<int> deleteVolunteer(int userId) async {
    final db = await database;
    return await db!.delete(
      'Volunteer',
      where: 'UserID = ?',
      whereArgs: [userId],
    );
  }
}