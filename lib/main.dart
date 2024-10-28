import 'package:flutter/material.dart';
import 'package:random_user/models/user_model.dart';
import 'package:random_user/screens/homepage.dart';
import 'package:random_user/services/userdata.dart';

void main() async{
  runApp(const MyApp());
UserModel x= await UserService.fetchRandomUsers();
  print(x.result[0]["name"]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(),
    );
  }
}
