import 'package:flutter/material.dart';
import 'package:popupbutton/data/dataprovider/bodyexpansion.dart';
import 'package:popupbutton/view/popup_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => BodyExpansionProvider(),
      
    ),
     ChangeNotifierProvider(create: (_) =>  BodyExpansioForpartyProvider()),
  ], child: MyApp()));
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
        home: AttendanceReport());
  }
}
