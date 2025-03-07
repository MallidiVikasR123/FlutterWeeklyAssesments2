import 'package:app/firebase_options.dart';
import 'package:app/providers/bnb_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'providers/shorts_option_provider.dart';
import 'views/bottomnavbar/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ShortsOptionProvider()),
        ChangeNotifierProvider(create: (_) => BnbIndexProvider()),
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube',
      home: BottomNavigationBarPage(),
    );
  }
}