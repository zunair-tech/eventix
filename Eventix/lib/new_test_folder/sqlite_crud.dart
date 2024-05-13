import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:Eventix/new_test_folder/models/user_model.dart';
import 'package:Eventix/new_test_folder/databaseHelper.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final dbHelper = DatabaseHelper();
  List<User> userList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQLite Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _insertData,
              child: Text('Insert Data'),
            ),
            ElevatedButton(
              onPressed: _retrieveData,
              child: Text('Retrieve Data'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: userList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(userList[index].name),
                    subtitle: Text(userList[index].email),
                    leading: userList[index].imagePath != null
                        ? Image.file(File(userList[index].imagePath!))
                        : null,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to handle image picking
  Future<File?> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      return File(pickedFile.path);
    } else {
      print('No image selected.');
      return null;
    }
  }

  // Method to insert data into SQLite with image
  void _insertData() async {
    File? imageFile = await _pickImage();
    if (imageFile != null) {
      // Insert data into SQLite with image path
      int userId = await dbHelper.insertUser(User(
        username: 'john_doe',
        password: 'password123',
        name: 'John Doe',
        email: 'john@example.com',
        phoneNumber: '1234567890',
        dateOfBirth: '1990-01-01',
        gender: 'Male',
        skills: 'Flutter, Dart',
        imagePath: imageFile.path, // Store image path in the database
      ));
      print('Inserted user with ID: $userId');
    }
  }

  // Method to retrieve data from SQLite
  void _retrieveData() async {
    List<User> users = await dbHelper.getUsers();
    setState(() {
      userList = users;
    });
  }
}
