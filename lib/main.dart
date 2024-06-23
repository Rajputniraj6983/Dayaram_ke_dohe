import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rahim_ke_dohe/Provider/Data_provider.dart';
import 'package:rahim_ke_dohe/Provider/Theme_provider.dart';
import 'package:rahim_ke_dohe/Provider/language_provider.dart';
import 'package:rahim_ke_dohe/View/Screen/Home_screen.dart';
void main(){
  runApp(MultiProvider(providers:[
    ChangeNotifierProvider(create: (contex) => DataProvider(),),
   // ChangeNotifierProvider(create: (contex) => LanguageProvider(),),
    ChangeNotifierProvider(create: (contex) => ThemeProvider(),),

  ],child: MyApp(),));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      // theme: provider.of<ThemeProvider>(context).isThemeDark
      // ?ThemeData.dark() :ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
