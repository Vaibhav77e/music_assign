import 'package:flutter/material.dart';
import 'package:music_app_assign/pages/home.dart';
import 'pages/myhomepage.dart';

// import 'package:music_app_assign/providersFolder/scrollviewlogic.dart';
import 'package:provider/provider.dart';
import './providersFolder/pagecontrol.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => PageControl())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
