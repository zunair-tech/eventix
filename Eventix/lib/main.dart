import 'package:Eventix/new_test_folder/databaseHelper.dart';
import 'package:Eventix/new_test_folder/sqlite_crud.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';

import 'core/app_export.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Get the path to the database file in the project directory
  String path = 'Eventix.db';

  // Open the database
  Database database = await openDatabase(path);

  // Now you can perform operations on the database using the `database` object
  // For example, you can execute queries, insert data, update data, delete data, etc.

  // Don't forget to close the database when you're done
  await database.close();

  // Initialize the database
  await DatabaseHelper().initDatabase();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: Locale('en', 'US'),
      title: 'Evento',
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
      // home: TestPage(),
    );
  }
}
