import 'package:flutter/material.dart';
import 'package:get_extorage_example/core/storage/storage.dart';
import 'package:get_extorage_example/pages/home/home_page.dart';
import 'package:get_extorage_example/pages/storage/storage_page.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();//container default
  await GetStorage.init('JornadaGetX');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primaryColor: Colors.blue,
        useMaterial3: false,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const HomePage(),
      home: const StoragePage(),
    );
  }
}
